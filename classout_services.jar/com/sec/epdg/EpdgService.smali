.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$WfcProfileTask;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgService$WifiCallHandover;,
        Lcom/sec/epdg/EpdgService$WifiCallEnabler;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$EpdgSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;,
        Lcom/sec/epdg/EpdgService$HoDelayStatus;,
        Lcom/sec/epdg/EpdgService$PolicyUpdateReason;,
        Lcom/sec/epdg/EpdgService$VoWifiStatus;,
        Lcom/sec/epdg/EpdgService$IpType;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_CDMAAVAILABILITY:Ljava/lang/String; = "cdmaAvailability"

.field public static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_ADB_IP_CALL_SETTING_CHANGE:Ljava/lang/String; = "com.sec.commands.ipcall.action_ip_setting_change"

.field private static final INTENT_ADB_IP_CALL_SETTING_NAME:Ljava/lang/String; = "com.sec.commands.ipcall.setting"

.field private static final INTENT_ADB_IP_CALL_SETTING_STATE:Ljava/lang/String; = "com.sec.commands.ipcall.state"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED_END:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final INTENT_EPDG_DEREGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_DEREGISTER"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field private static final INTENT_EPDG_REGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_REGISTER"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_EPDN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_XCAP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

.field private static final INTENT_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final INTENT_PERIODIC_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static final VIDEO_SETTING:I = 0x1

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field private static final VOLTE_SETTING:I = 0x0

.field private static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final WIFI_CALL_ENABLE_DEFAULT_VALUE:I = 0x0

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_IP_CONFIG_TIMER:I = 0xa

.field private static final WIFI_RSSI_DISABLE:I = -0x64

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultEnableEpdg:I

.field private static mDefaultSubID:I

.field private static mDeregiForHOFail:Z

.field private static mDisabledByNoRan:Z

.field private static mDisconnectRequired:Z

.field private static mEnableEpdg:Z

.field private static mEnableEpdgHandOver:Z

.field private static mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static final mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

.field private static mIsAirplaneMode:Z

.field private static mIsCsAvailable:Z

.field private static mIsEpdgInitialized:Z

.field private static mIsIsimReady:Z

.field private static mIsLteAvailable:Z

.field private static mIsRequiredToSendCdmaIndication:Z

.field private static mIsRssiDisabledForProfiling:Z

.field private static mIsSimCardRemoved:Z

.field private static mIsVoPSEnabled:Z

.field private static mIsWifiRssiInPollingZone:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mPreviousE911CallCount:I

.field private static mPreviousNonE911CallCount:I

.field private static mRoaming:Z

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mSsacVoiceEnabled:Z

.field private static mW2LAfterEpdgStatusQuery:Z

.field private static mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

.field private static mWifiCallingPrefState:I

.field private static mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private ROAMING_MODE_SETTING:Ljava/lang/String;

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private isCpThresholdTurnOn:Z

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mBlackListCountry:Ljava/lang/String;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mCdmaOff:Ljava/lang/Runnable;

.field private final mCdmaOn:Ljava/lang/Runnable;

.field private mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mDnsPinger:Lcom/sec/epdg/DnsPinger;

.field private final mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIsScreenOn:Z

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private final mL2WHandoverProfilingOn:Ljava/lang/Runnable;

.field private mLastSsid:Ljava/lang/String;

.field private final mLteOff:Ljava/lang/Runnable;

.field private final mLteOn:Ljava/lang/Runnable;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPeriodicDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPingerHandlerThread:Landroid/os/HandlerThread;

.field private final mPollingRssiOff:Ljava/lang/Runnable;

.field private final mPollingRssiOn:Ljava/lang/Runnable;

.field private final mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRegistedNetworkStateChangeReceiver:Z

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mRoamingUri:Landroid/net/Uri;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private final mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private final mWifiOnUri:Landroid/net/Uri;

.field private final mWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private final mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    sput-boolean v1, mIsAirplaneMode:Z

    .line 163
    sput-boolean v1, mIsVoPSEnabled:Z

    .line 165
    sput v1, mPreviousE911CallCount:I

    .line 167
    sput v1, mPreviousNonE911CallCount:I

    .line 169
    sput-boolean v1, mIsWifiRssiInPollingZone:Z

    .line 171
    sput-boolean v1, mIsRssiDisabledForProfiling:Z

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    .line 267
    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 269
    sput v1, mActiveRat:I

    .line 270
    sput-boolean v1, mCellularAvailable:Z

    .line 271
    sput-boolean v1, mRoaming:Z

    .line 272
    sput-boolean v1, mDisconnectRequired:Z

    .line 279
    sput-boolean v1, bIsSimReady:Z

    .line 280
    sput-boolean v1, mIsIsimReady:Z

    .line 281
    sput-boolean v1, mEnableEpdg:Z

    .line 282
    sput-boolean v1, mEnableEpdgHandOver:Z

    .line 283
    sput-boolean v1, mIsSimCardRemoved:Z

    .line 284
    sput v1, mDefaultEnableEpdg:I

    .line 288
    sput v2, mDefaultSubID:I

    .line 289
    sput-boolean v1, bIsSim2Ready:Z

    .line 293
    sput-boolean v1, mIsEpdgInitialized:Z

    .line 298
    sput-boolean v1, isOnDemandApnConnectionFailed:Z

    .line 299
    sput-boolean v1, isNotRequiredTimer:Z

    .line 304
    sput-boolean v1, mW2LAfterEpdgStatusQuery:Z

    .line 305
    sput-boolean v1, mL2WAfterEpdgStatusQuery:Z

    .line 306
    sput v1, mCopyLogCnt:I

    .line 307
    sput-boolean v1, mIsRequiredToSendCdmaIndication:Z

    .line 308
    sput-boolean v2, mSsacVoiceEnabled:Z

    .line 325
    sput-boolean v1, mDisabledByNoRan:Z

    .line 327
    sput-boolean v1, mDeregiForHOFail:Z

    .line 354
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 355
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 597
    sput-boolean v1, mIsLteAvailable:Z

    .line 660
    sput-boolean v1, mIsCsAvailable:Z

    .line 1054
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3201
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sput-object v0, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 4031
    const/4 v0, -0x1

    sput v0, mWifiCallingPrefState:I

    .line 4054
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v0, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4258
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 5352
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5714
    const/4 v0, 0x0

    sput-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2315
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    .line 159
    iput-boolean v2, p0, mIsScreenOn:Z

    .line 191
    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 242
    const-string/jumbo v0, "wifi_call_when_roaming"

    iput-object v0, p0, ROAMING_MODE_SETTING:Ljava/lang/String;

    .line 243
    iget-object v0, p0, ROAMING_MODE_SETTING:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mRoamingUri:Landroid/net/Uri;

    .line 244
    const-string/jumbo v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mWifiOnUri:Landroid/net/Uri;

    .line 278
    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, W2LHANDOFFAILURE:Ljava/lang/String;

    .line 285
    iput-object v1, p0, mPrevSimImsi:Ljava/lang/String;

    .line 286
    iput-object v1, p0, mCurrentSimImsi:Ljava/lang/String;

    .line 290
    iput-object v1, p0, mPrevSim2Imsi:Ljava/lang/String;

    .line 291
    iput-object v1, p0, mCurrentSim2Imsi:Ljava/lang/String;

    .line 295
    iput-boolean v2, p0, mKeepAliveRunning:Z

    .line 296
    iput-boolean v2, p0, mKeepAliveExpired:Z

    .line 297
    iput-boolean v2, p0, mRegistedNetworkStateChangeReceiver:Z

    .line 300
    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    .line 301
    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 302
    iput-object v1, p0, mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 309
    iput-object v1, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 310
    iput-object v1, p0, mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 317
    iput v2, p0, mFqdnRetryCount:I

    .line 323
    iput-boolean v2, p0, isCpThresholdTurnOn:Z

    .line 1232
    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1244
    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1257
    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1275
    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1296
    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1308
    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1340
    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mPeriodicDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1377
    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1391
    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1403
    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1431
    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1454
    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1485
    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1516
    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1532
    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1574
    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1614
    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1634
    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1930
    iput-object v1, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1966
    iput-object v1, p0, mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 2010
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    .line 4025
    iput v2, p0, mWifiMgrState:I

    .line 4259
    const-string v0, "UNKNOWN"

    iput-object v0, p0, mBlackListCountry:Ljava/lang/String;

    .line 4260
    iput-object v1, p0, mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4373
    new-instance v0, Lcom/sec/epdg/EpdgService$19;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$19;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4385
    new-instance v0, Lcom/sec/epdg/EpdgService$20;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$20;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4755
    new-instance v0, Lcom/sec/epdg/EpdgService$21;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$21;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    .line 4766
    new-instance v0, Lcom/sec/epdg/EpdgService$22;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$22;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 4777
    new-instance v0, Lcom/sec/epdg/EpdgService$23;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$23;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mPollingRssiOn:Ljava/lang/Runnable;

    .line 4785
    new-instance v0, Lcom/sec/epdg/EpdgService$24;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$24;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mPollingRssiOff:Ljava/lang/Runnable;

    .line 4793
    new-instance v0, Lcom/sec/epdg/EpdgService$25;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$25;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiOn:Ljava/lang/Runnable;

    .line 4822
    new-instance v0, Lcom/sec/epdg/EpdgService$26;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$26;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiOff:Ljava/lang/Runnable;

    .line 4924
    new-instance v0, Lcom/sec/epdg/EpdgService$27;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$27;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mLteOn:Ljava/lang/Runnable;

    .line 4933
    new-instance v0, Lcom/sec/epdg/EpdgService$28;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$28;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mLteOff:Ljava/lang/Runnable;

    .line 4953
    new-instance v0, Lcom/sec/epdg/EpdgService$29;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$29;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mCdmaOn:Ljava/lang/Runnable;

    .line 4982
    new-instance v0, Lcom/sec/epdg/EpdgService$30;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$30;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mCdmaOff:Ljava/lang/Runnable;

    .line 5061
    new-instance v0, Lcom/sec/epdg/EpdgService$31;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$31;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mWifiCallingOff:Ljava/lang/Runnable;

    .line 5083
    new-instance v0, Lcom/sec/epdg/EpdgService$32;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$32;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    .line 5600
    new-instance v0, Lcom/sec/epdg/EpdgService$33;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$33;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2316
    invoke-direct {p0, p1}, criticalInit(Landroid/content/Context;)V

    .line 2317
    return-void
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .registers 5
    .param p1, "voLte"    # I

    .prologue
    .line 3016
    monitor-enter p0

    :try_start_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") 1x available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, getIsCsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v0}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3020
    invoke-static {}, getIsCsAvailable()Z

    move-result v0

    if-nez v0, :cond_52

    .line 3022
    const/4 v0, 0x1

    if-ne p1, v0, :cond_54

    .line 3023
    invoke-static {}, isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3024
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_85

    .line 3039
    :cond_52
    :goto_52
    monitor-exit p0

    return-void

    .line 3028
    :cond_54
    :try_start_54
    const-string v0, "[EPDGService]"

    const-string v1, "Volte Off or vops disabled, Cdma scanning will start. Start the TEPDG1XSCANNING timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3031
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3033
    :cond_6c
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3034
    invoke-static {}, isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3035
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_84
    .catchall {:try_start_54 .. :try_end_84} :catchall_85

    goto :goto_52

    .line 3016
    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized MoveToBasedOnVopsOrSsac(I)V
    .registers 5
    .param p1, "networkSetting"    # I

    .prologue
    .line 3042
    monitor-enter p0

    :try_start_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, getIsVoPSEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4d

    .line 3048
    invoke-static {}, isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3049
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_5f

    .line 3056
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    .line 3052
    :cond_4d
    :try_start_4d
    invoke-static {}, isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3053
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_5f

    goto :goto_4b

    .line 3042
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ReadEpdgSettingFromIMS()V
    .registers 8

    .prologue
    .line 1842
    const-string v4, "[EPDGService]"

    const-string v5, "ReadEpdgSettingFromIMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v2, ""

    .line 1844
    .local v2, "strEpgdEnabled":Ljava/lang/String;
    const-string v3, ""

    .line 1846
    .local v3, "strEpgdHandoverEnabled":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_86

    .line 1847
    .local v0, "reqField":[I
    iget-object v4, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v4, :cond_2d

    .line 1848
    iget-object v4, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v4, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 1849
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    .line 1850
    const/16 v4, 0x7a

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "strEpgdEnabled":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1851
    .restart local v2    # "strEpgdEnabled":Ljava/lang/String;
    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1855
    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    :cond_2d
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strEpgdEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strEpgdHandoverEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, mEnableEpdg:Z

    .line 1858
    sget-boolean v4, mEnableEpdg:Z

    if-eqz v4, :cond_80

    .line 1859
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, mEnableEpdgHandOver:Z

    .line 1860
    const-string/jumbo v5, "ril.epdg.handover.enable"

    sget-boolean v4, mEnableEpdgHandOver:Z

    if-eqz v4, :cond_81

    const-string/jumbo v4, "true"

    :goto_7d
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_80
    return-void

    .line 1860
    :cond_81
    const-string/jumbo v4, "false"

    goto :goto_7d

    .line 1846
    nop

    :array_86
    .array-data 4
        0x7a
        0x7b
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, handleImsStateChange(I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method static synthetic access$10100(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onNetworkStatusChanged()V

    return-void
.end method

.method static synthetic access$10200(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 133
    invoke-direct {p0, p1}, onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$10500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, setVowifiSetting(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/epdg/EpdgService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getIsSimCardRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, getIsScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, startWifiProfiling()V

    return-void
.end method

.method static synthetic access$2200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/sec/epdg/EpdgTimers;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, sendEpdgRegisterBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2600()Lcom/sec/epdg/handover/EpdgImsListener;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .prologue
    .line 133
    sput-object p0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mRoamingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mWifiOnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, sendWifiDelayRequest(Z)V

    return-void
.end method

.method static synthetic access$3300()[Lcom/sec/epdg/IPSecDataConnSM;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Lcom/sec/epdg/EpdgService$IpType;
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, startTimerOrPerformDns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p1}, initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/EpdgService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$4100()I
    .registers 1

    .prologue
    .line 133
    sget v0, mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$4102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$4200()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$4400()I
    .registers 1

    .prologue
    .line 133
    sget v0, mActiveRat:I

    return v0
.end method

.method static synthetic access$4500()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/epdg/EpdgService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, handlePeriodicDpdTimerExpired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Lcom/sec/epdg/EpdgRilSharedData;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, handleMapconChange()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, isHandoverRequiredOnCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    return-void
.end method

.method static synthetic access$5900()Lcom/sec/epdg/EpdgService$IpType;
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, pingAsyncInternet()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/EpdgService$IpType;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onWifiConnected()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, startPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600()V
    .registers 0

    .prologue
    .line 133
    invoke-static {}, stopWifiRssiIntentDelayTimerIfRequired()V

    return-void
.end method

.method static synthetic access$6700(Lcom/sec/epdg/EpdgService;ZZZZZ)Z
    .registers 7
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 133
    invoke-direct/range {p0 .. p5}, isRegistrationRequired(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, MoveToBasedOnSettings(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onVolteProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgContentReader;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onVoWifiProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgContentReader;

    .prologue
    .line 133
    sput-object p0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$7100()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, mDisconnectRequired:Z

    return v0
.end method

.method static synthetic access$7102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, mDisconnectRequired:Z

    return p0
.end method

.method static synthetic access$7200()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-object v0
.end method

.method static synthetic access$7300()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, mDeregiForHOFail:Z

    return v0
.end method

.method static synthetic access$7302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, mDeregiForHOFail:Z

    return p0
.end method

.method static synthetic access$7400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    return-void
.end method

.method static synthetic access$7500()Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onVopsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, getHasPendingCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, setHasPendingCdmaIndication(Z)V

    return-void
.end method

.method static synthetic access$7900()Z
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # J

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method static synthetic access$8000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, setIsSsacVoiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/sec/epdg/EpdgService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, MoveToBasedOnVopsOrSsac(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, changeApBlocking(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, initAfterimsReady()V

    return-void
.end method

.method static synthetic access$8400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8602(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, mWifiCallingPrefState:I

    return p0
.end method

.method static synthetic access$8700(Lcom/sec/epdg/EpdgService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, getIsNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 133
    invoke-direct {p0, p1}, updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mBlackListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/epdg/EpdgService$IpType;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/sec/epdg/EpdgService;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, mWifiMgrState:I

    return v0
.end method

.method static synthetic access$9202(Lcom/sec/epdg/EpdgService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, mWifiMgrState:I

    return p1
.end method

.method static synthetic access$9300()Landroid/net/ConnectivityManager;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9500()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .registers 1

    .prologue
    .line 133
    invoke-static {}, getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, setIsWifiRssiInPollingZone(Z)V

    return-void
.end method

.method static synthetic access$9700(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$9800(Lcom/sec/epdg/EpdgService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$9900(Lcom/sec/epdg/EpdgService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, updateCpEpdgHoThreshold(Z)V

    return-void
.end method

.method private changeApBlocking(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 4312
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_5

    .line 4335
    :goto_4
    return-void

    .line 4315
    :cond_5
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocking State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    invoke-direct {p0}, isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4318
    if-eqz p1, :cond_75

    sget-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v0, v1, :cond_75

    .line 4319
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4320
    invoke-static {}, isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4321
    invoke-direct {p0}, onWifiConnected()V

    .line 4334
    :cond_56
    :goto_56
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4323
    :cond_75
    if-nez p1, :cond_56

    sget-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_56

    .line 4324
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4325
    const/4 v0, 0x1

    sput-boolean v0, isNotRequiredTimer:Z

    .line 4327
    const/4 v0, 0x0

    invoke-direct {p0, v0}, sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_99

    .line 4328
    const-string v0, "[EPDGService]"

    const-string v1, "AP blocked - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4329
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4331
    :cond_99
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto :goto_56
.end method

.method private checkAndUpdateWifiAvailability()V
    .registers 4

    .prologue
    .line 3148
    invoke-static {}, getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3149
    const-string v0, "[EPDGService]"

    const-string v1, "checkAndUpdateWifiAvailability: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    :cond_d
    :goto_d
    return-void

    .line 3152
    :cond_e
    invoke-direct {p0}, isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3153
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_3b

    .line 3154
    sget-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_d

    .line 3155
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {v2}, getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 3157
    sget-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    .line 3160
    :cond_3b
    invoke-direct {p0}, onWifiConnected()V

    goto :goto_d
.end method

.method private checkVopsStatus(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    .line 5587
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: service state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5588
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 5589
    .local v0, "vops":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    .line 5590
    const-string v2, "[EPDGService]"

    const-string v3, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5598
    :cond_27
    :goto_27
    return-void

    .line 5593
    :cond_28
    if-ne v0, v1, :cond_4c

    .line 5594
    .local v1, "vopsEnabled":Z
    :goto_2a
    invoke-static {}, getIsVoPSEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_27

    .line 5595
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5596
    invoke-direct {p0, v0}, onVopsStatusChanged(I)V

    goto :goto_27

    .line 5593
    .end local v1    # "vopsEnabled":Z
    :cond_4c
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private static copyVpnLog(I)V
    .registers 13
    .param p0, "num"    # I

    .prologue
    .line 3305
    const/4 v3, 0x0

    .line 3306
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3307
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3309
    .local v1, "dest":Ljava/lang/String;
    :try_start_1b
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_81
    .catchall {:try_start_1b .. :try_end_22} :catchall_a6

    .line 3310
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_22
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_27} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_cb
    .catchall {:try_start_22 .. :try_end_27} :catchall_c4

    .line 3312
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_29
    new-array v0, v9, [B

    .line 3315
    .local v0, "buffer":[B
    :goto_2b
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_4b

    .line 3316
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_ce
    .catchall {:try_start_29 .. :try_end_35} :catchall_c7

    goto :goto_2b

    .line 3319
    .end local v0    # "buffer":[B
    .end local v8    # "len":I
    :catch_36
    move-exception v5

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3320
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_39
    :try_start_39
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_a6

    .line 3324
    if-eqz v3, :cond_45

    .line 3326
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_6f

    .line 3331
    :cond_45
    :goto_45
    if-eqz v6, :cond_4a

    .line 3333
    :try_start_47
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_78

    .line 3340
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_4a
    :goto_4a
    return-void

    .line 3318
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_4b
    :try_start_4b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_4e} :catch_36
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_ce
    .catchall {:try_start_4b .. :try_end_4e} :catchall_c7

    .line 3324
    if-eqz v4, :cond_53

    .line 3326
    :try_start_50
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_5b

    .line 3331
    :cond_53
    :goto_53
    if-eqz v7, :cond_d9

    .line 3333
    :try_start_55
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_64

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3336
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4a

    .line 3327
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_5b
    move-exception v2

    .line 3328
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 3334
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_64
    move-exception v2

    .line 3335
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3336
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4a

    .line 3327
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "len":I
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_6f
    move-exception v2

    .line 3328
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 3334
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v2

    .line 3335
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 3321
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_81
    move-exception v2

    .line 3322
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_82
    :try_start_82
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_a6

    .line 3324
    if-eqz v3, :cond_8e

    .line 3326
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_9d

    .line 3331
    :cond_8e
    :goto_8e
    if-eqz v6, :cond_4a

    .line 3333
    :try_start_90
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_4a

    .line 3334
    :catch_94
    move-exception v2

    .line 3335
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 3327
    :catch_9d
    move-exception v2

    .line 3328
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 3324
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_a6
    move-exception v9

    :goto_a7
    if-eqz v3, :cond_ac

    .line 3326
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_b2

    .line 3331
    :cond_ac
    :goto_ac
    if-eqz v6, :cond_b1

    .line 3333
    :try_start_ae
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_bb

    .line 3336
    :cond_b1
    :goto_b1
    throw v9

    .line 3327
    :catch_b2
    move-exception v2

    .line 3328
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 3334
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_bb
    move-exception v2

    .line 3335
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 3324
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_c4
    move-exception v9

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_a7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_c7
    move-exception v9

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_a7

    .line 3321
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_cb
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_82

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_ce
    move-exception v2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_82

    .line 3319
    :catch_d2
    move-exception v5

    goto/16 :goto_39

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d5
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_39

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_d9
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_4a
.end method

.method private criticalInit(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2306
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    sput-object p1, mContext:Landroid/content/Context;

    .line 2308
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 2309
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2310
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, mEpdgHandler:Landroid/os/Handler;

    .line 2311
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2312
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    return-void
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3801
    const/4 v2, 0x0

    .line 3803
    .local v2, "apnName":Ljava/lang/String;
    if-nez p0, :cond_c

    .line 3804
    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    :goto_b
    return-object v6

    .line 3808
    :cond_c
    invoke-static {}, getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 3809
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3810
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 3811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 3812
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    .line 3813
    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 3814
    .local v3, "apnType":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3815
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3816
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 3818
    goto :goto_b

    .line 3821
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v5    # "remoteUri":Ljava/lang/String;
    :cond_56
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .registers 3

    .prologue
    .line 592
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget-object v0, mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .registers 1

    .prologue
    .line 436
    sget-object v0, mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5268
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5270
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 5271
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 5272
    .local v0, "newSsid":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5274
    return-object v0
.end method

.method private static getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .registers 3

    .prologue
    .line 582
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v0, mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .registers 1

    .prologue
    .line 719
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1113
    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 2262
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .registers 1

    .prologue
    .line 715
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private static getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .registers 1

    .prologue
    .line 4263
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_7

    .line 4264
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4266
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    goto :goto_6
.end method

.method private getHasPendingCdmaIndication()Z
    .registers 2

    .prologue
    .line 3285
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_6

    .line 3286
    const/4 v0, 0x0

    .line 3288
    :goto_5
    return v0

    :cond_6
    sget-boolean v0, mIsRequiredToSendCdmaIndication:Z

    goto :goto_5
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .registers 4

    .prologue
    .line 499
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-boolean v0, mIsAirplaneMode:Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return v0

    .line 499
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 623
    const-class v7, Lcom/sec/epdg/EpdgService;

    monitor-enter v7

    :try_start_5
    sget-object v8, mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 624
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 626
    .local v1, "isRoaming":Z
    const/4 v0, 0x0

    .line 627
    .local v0, "bIsCellularAvailable":Z
    const-string/jumbo v8, "gsm.sim.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "simState":Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    const-string/jumbo v8, "true"

    const-string/jumbo v9, "gsm.operator.isroaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 629
    const/4 v1, 0x1

    .line 631
    :cond_32
    if-eqz v1, :cond_3c

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_4a

    move-result v8

    if-nez v8, :cond_3c

    .line 653
    :goto_3a
    monitor-exit v7

    return v5

    .line 635
    :cond_3c
    :try_start_3c
    sget v8, mWifiCallingPrefState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4d

    .line 636
    const-string v6, "[EPDGService]"

    const-string/jumbo v8, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v6, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_4a

    goto :goto_3a

    .line 623
    .end local v3    # "simState":Ljava/lang/String;
    :catchall_4a
    move-exception v5

    monitor-exit v7

    throw v5

    .line 640
    .restart local v3    # "simState":Ljava/lang/String;
    :cond_4d
    :try_start_4d
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_95

    .line 641
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v8

    if-nez v8, :cond_93

    invoke-static {}, getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_93

    move v0, v6

    .line 642
    :goto_68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    sget v9, mDefaultSubID:I

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 648
    .local v2, "netType":I
    :goto_72
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 649
    if-nez v2, :cond_8a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_ad

    :cond_8a
    invoke-static {}, getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_ad

    move v0, v6

    :cond_91
    :goto_91
    move v5, v0

    .line 653
    goto :goto_3a

    .end local v2    # "netType":I
    :cond_93
    move v0, v5

    .line 641
    goto :goto_68

    .line 644
    :cond_95
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v8

    if-nez v8, :cond_ab

    invoke-static {}, getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_ab

    move v0, v6

    .line 645
    :goto_a2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I
    :try_end_a9
    .catchall {:try_start_4d .. :try_end_a9} :catchall_4a

    move-result v2

    .restart local v2    # "netType":I
    goto :goto_72

    .end local v2    # "netType":I
    :cond_ab
    move v0, v5

    .line 644
    goto :goto_a2

    .restart local v2    # "netType":I
    :cond_ad
    move v0, v5

    .line 649
    goto :goto_91
.end method

.method public static declared-synchronized getIsCsAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 663
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    :try_start_5
    sget-object v3, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartCdmaRunning()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 664
    sget-boolean v3, mIsCsAvailable:Z

    if-eqz v3, :cond_1d

    sget-object v3, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_42

    move-result v3

    if-nez v3, :cond_1d

    .line 668
    :goto_1b
    monitor-exit v2

    return v0

    :cond_1d
    move v0, v1

    .line 664
    goto :goto_1b

    .line 668
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_35

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_40

    :cond_35
    sget-object v3, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_42

    move-result v3

    if-nez v3, :cond_40

    move v1, v0

    :cond_40
    move v0, v1

    goto :goto_1b

    .line 663
    :catchall_42
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIsDynamicFqdn()Z
    .registers 1

    .prologue
    .line 723
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method private static getIsImsCallConnected()Z
    .registers 4

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "result":Z
    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_16

    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_16

    .line 571
    const/4 v0, 0x1

    .line 573
    :cond_16
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsImsCallConnected: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .registers 3

    .prologue
    .line 601
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 602
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getIsLteAvailable()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_43

    move-result v0

    .line 604
    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_41

    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, getIsVoPSEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, getIsSsacVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_35
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_43

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 v0, 0x1

    goto :goto_11

    :cond_41
    const/4 v0, 0x0

    goto :goto_11

    .line 601
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsNetworkRoaming()Z
    .registers 2

    .prologue
    .line 4051
    iget-object v0, p0, mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 1172
    sget-boolean v0, isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getIsRssiDisabledForProfiling()Z
    .registers 3

    .prologue
    .line 558
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-boolean v0, mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method private declared-synchronized getIsScreenOn()Z
    .registers 4

    .prologue
    .line 490
    monitor-enter p0

    :try_start_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsScreenOn: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-boolean v0, p0, mIsScreenOn:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    .line 490
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getIsSimCardRemoved()Z
    .registers 3

    .prologue
    .line 701
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsSimCardRemoved: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsSimCardRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sget-boolean v0, mIsSimCardRemoved:Z

    return v0
.end method

.method private static declared-synchronized getIsSsacVoiceEnabled()Z
    .registers 4

    .prologue
    .line 518
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mSsacVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-boolean v0, mSsacVoiceEnabled:Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return v0

    .line 518
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getIsVoPSEnabled()Z
    .registers 4

    .prologue
    .line 508
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsVoPSEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mIsVoPSEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-boolean v0, mIsVoPSEnabled:Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return v0

    .line 508
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 5

    .prologue
    .line 4033
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v1, :cond_34

    .line 4039
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, ROAMING_MODE_SETTING:Ljava/lang/String;

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgConstants$TriState;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4043
    .local v0, "prefWifi":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsWiFiPreferredInRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 4046
    .end local v0    # "prefWifi":I
    :goto_33
    return-object v1

    :cond_34
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_33
.end method

.method private static getIsWifiRssiInPollingZone()Z
    .registers 3

    .prologue
    .line 548
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsWifiRssiInPollingZone: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsWifiRssiInPollingZone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-boolean v0, mIsWifiRssiInPollingZone:Z

    return v0
.end method

.method public static declared-synchronized getIsimState()Z
    .registers 2

    .prologue
    .line 692
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, mIsIsimReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .registers 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3613
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_42

    .line 3615
    sget-object v1, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    sget-object v1, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 3617
    sget-object v1, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    .line 3620
    :goto_3e
    return-object v1

    .line 3614
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 3620
    :cond_42
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public static declared-synchronized getPreviousE911CallCount()I
    .registers 4

    .prologue
    .line 528
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, mPreviousE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget v0, mPreviousE911CallCount:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return v0

    .line 528
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreviousNonE911CallCount()I
    .registers 4

    .prologue
    .line 538
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousNonE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, mPreviousNonE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget v0, mPreviousNonE911CallCount:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return v0

    .line 538
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .registers 2

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mRegistedNetworkStateChangeReceiver:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .registers 9
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1369
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 1370
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1375
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_12
    return-object v3

    .line 1369
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1374
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_16
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static declared-synchronized getSimState()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 686
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_6
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSimState() SimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, bIsSimReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, bIsSim2Ready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-nez v3, :cond_37

    sget-boolean v3, bIsSimReady:Z

    if-eq v3, v0, :cond_42

    :cond_37
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-ne v3, v0, :cond_44

    sget-boolean v3, bIsSim2Ready:Z
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_46

    if-ne v3, v0, :cond_44

    :cond_42
    :goto_42
    monitor-exit v2

    return v0

    :cond_44
    move v0, v1

    goto :goto_42

    .line 686
    :catchall_46
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getTargetRilNetwork()I
    .registers 4

    .prologue
    .line 5572
    const/16 v0, 0xff

    .line 5573
    .local v0, "mTargetRilNetwork":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5575
    sget v1, mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3d

    .line 5576
    const/16 v0, 0x19

    .line 5582
    :goto_24
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    return v0

    .line 5577
    :cond_3d
    sget v1, mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_46

    .line 5578
    const/16 v0, 0x21

    goto :goto_24

    .line 5580
    :cond_46
    const/16 v0, 0xff

    goto :goto_24
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .registers 7

    .prologue
    .line 1030
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_call_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1032
    .local v2, "settingState":I
    invoke-static {v2}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 1033
    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 1034
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_27

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_27

    .line 1036
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 1049
    :goto_26
    return-object v3

    .line 1037
    :cond_27
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_39

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v1, :cond_39

    .line 1040
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_36

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26

    :cond_36
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26

    .line 1042
    :cond_39
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v0, :cond_4b

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4b

    .line 1045
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_48

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26

    :cond_48
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26

    .line 1049
    :cond_4b
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_56

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_56

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26

    :cond_56
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_26
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1739
    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1741
    .local v1, "subscription":I
    if-le v1, v4, :cond_5f

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_5f

    .line 1742
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1744
    .local v0, "phoneID":I
    const-string/jumbo v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    sput v1, mDefaultSubID:I

    .line 1747
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1750
    .end local v0    # "phoneID":I
    :cond_5f
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1751
    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .registers 27

    .prologue
    .line 738
    sget-boolean v2, mEnableEpdg:Z

    if-nez v2, :cond_d

    .line 739
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :goto_c
    return-void

    .line 742
    :cond_d
    sget-boolean v2, mIsEpdgInitialized:Z

    if-nez v2, :cond_53b

    .line 743
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->init()V

    .line 744
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    sput-object v2, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 746
    const-string v2, "[EPDGService]"

    const-string v3, "Using EpdgRilAdapter "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 749
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    .line 750
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    sput-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 752
    sget-object v2, mEpdgHandler:Landroid/os/Handler;

    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget v6, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget-object v8, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget v9, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    const/16 v10, 0xa

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 762
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    sput-object v2, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 767
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v2, :cond_170

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    :goto_e7
    sput-object v2, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 774
    invoke-virtual/range {p0 .. p0}, makeEpdgServiceUp()V

    .line 776
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    .line 780
    const-string v2, "[EPDGService]"

    const-string v3, "Creating the Handover State machines"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_138
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_174

    .line 782
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v21

    .line 784
    .local v21, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    sget-object v2, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, mContext:Landroid/content/Context;

    sget-object v5, mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aput-object v3, v2, v17

    .line 781
    add-int/lit8 v17, v17, 0x1

    goto :goto_138

    .line 767
    .end local v17    # "i":I
    .end local v21    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    :cond_170
    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    goto/16 :goto_e7

    .line 789
    .restart local v17    # "i":I
    :cond_174
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 791
    .local v13, "b":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mNMService:Landroid/os/INetworkManagementService;

    .line 794
    :try_start_183
    move-object/from16 v0, p0

    iget-object v2, v0, mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_18e} :catch_1eb

    .line 799
    :goto_18e
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 800
    .local v16, "filter":Landroid/content/IntentFilter;
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 801
    .local v23, "periodicDpdFilter":Landroid/content/IntentFilter;
    invoke-static {}, getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v11

    .line 802
    .local v11, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 803
    .local v12, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1a0
    :goto_1a0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_205

    .line 804
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/epdg/IWlanApnSetting;

    .line 805
    .local v22, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v24

    .line 806
    .local v24, "remoteUri":Ljava/lang/String;
    if-eqz v24, :cond_1a0

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1a0

    .line 795
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v24    # "remoteUri":Ljava/lang/String;
    :catch_1eb
    move-exception v14

    .line 796
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18e

    .line 813
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_205
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 814
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUseAlarm()Z

    move-result v2

    if-eqz v2, :cond_221

    .line 815
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mPeriodicDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    :cond_221
    invoke-direct/range {p0 .. p0}, getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_24d

    .line 819
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 821
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 823
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setRegistedNetworkStateChangeReceiver(Z)V

    .line 826
    :cond_24d
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_290

    .line 827
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PingerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPingerHandlerThread:Landroid/os/HandlerThread;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 831
    new-instance v2, Lcom/sec/epdg/DnsPinger;

    sget-object v3, mContext:Landroid/content/Context;

    const-string v4, "[EPDGService]"

    move-object/from16 v0, p0

    iget-object v5, v0, mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/epdg/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mDnsPinger:Lcom/sec/epdg/DnsPinger;

    .line 833
    :cond_290
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 837
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 839
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    const/4 v2, 0x0

    sget-object v3, mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iput-object v2, v0, mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v2, :cond_2f6

    .line 843
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "registerForCallStateChange..."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :try_start_2eb
    move-object/from16 v0, p0

    iget-object v2, v0, mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v3, v0, mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_2f6
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_2eb .. :try_end_2f6} :catch_51c

    .line 850
    :cond_2f6
    :goto_2f6
    sget-object v2, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    .line 851
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_31f

    .line 852
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 857
    :cond_31f
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_333

    .line 858
    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 862
    :cond_333
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_42a

    .line 863
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35b

    .line 865
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 869
    :cond_35b
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :try_start_381
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3a6

    .line 875
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "vowifi enable parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    :cond_3a6
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): wifi call enable is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3cc
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_381 .. :try_end_3cc} :catch_522

    .line 887
    :goto_3cc
    move-object/from16 v0, p0

    iget-object v2, v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42a

    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42a

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vowifi_mdn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42a

    .line 891
    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {v2}, resetVowifiMdnCache(Landroid/content/Context;)V

    .line 892
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52c

    .line 894
    const-string v2, "[EPDGService]"

    const-string v3, "Turning off vowifi as SIM mdn and vowifi mdn parameter is different"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    :cond_42a
    :goto_42a
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_535

    const/16 v18, 0x1

    .line 909
    .local v18, "isAirplaneModeEnabled":Z
    :goto_43b
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static/range {v18 .. v18}, setIsAirplaneMode(Z)V

    .line 913
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_47d

    .line 915
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 919
    :cond_47d
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-direct/range {p0 .. p0}, getIsNetworkRoaming()Z

    move-result v2

    sput-boolean v2, mRoaming:Z

    .line 922
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4f2

    .line 923
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    sput v2, mDefaultSubID:I

    .line 924
    const-string/jumbo v2, "sys.default.data.phoneid"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): mDefaultDataPhoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultSubID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mDefaultSubID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_4f2
    const/4 v2, 0x0

    invoke-static {v2}, setIsEpdgAvailable(Z)V

    .line 931
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_539

    const/4 v2, 0x0

    :goto_503
    sput v2, mDefaultEnableEpdg:I

    .line 932
    sget-object v2, mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    .line 933
    .local v25, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_517

    .line 934
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mWifiMgrState:I

    .line 966
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v25    # "wifi":Landroid/net/NetworkInfo;
    :cond_517
    :goto_517
    const/4 v2, 0x1

    sput-boolean v2, mIsEpdgInitialized:Z

    goto/16 :goto_c

    .line 846
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v17    # "i":I
    .restart local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :catch_51c
    move-exception v14

    .line 847
    .local v14, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v14}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_2f6

    .line 881
    .end local v14    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catch_522
    move-exception v15

    .line 882
    .local v15, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[EPDGService]"

    const-string v3, "In catch block, setting not found exception"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3cc

    .line 899
    .end local v15    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_52c
    const-string v2, "[EPDGService]"

    const-string v3, "Vowifi is already turned off"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_42a

    .line 907
    :cond_535
    const/16 v18, 0x0

    goto/16 :goto_43b

    .line 931
    .restart local v18    # "isAirplaneModeEnabled":Z
    :cond_539
    const/4 v2, 0x1

    goto :goto_503

    .line 937
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_53b
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->writeToEFSFile()V

    .line 938
    sget-object v2, mEpdgHandler:Landroid/os/Handler;

    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget v6, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget-object v8, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget v9, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    const/16 v10, 0xa

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 948
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_5ec

    .line 953
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 954
    invoke-direct/range {p0 .. p0}, startWifiProfiling()V

    .line 957
    :cond_5ec
    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v19

    .line 959
    .local v19, "isDataRetryEnabled":Z
    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v20

    .line 961
    .local v20, "isThrottlingEnabled":Z
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After db read: isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    .line 964
    sget-object v2, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    goto/16 :goto_517
.end method

.method private handleImsStateChange(I)V
    .registers 6
    .param p1, "action"    # I

    .prologue
    .line 1865
    const-string v0, "[EPDGService]"

    const-string v1, "Inside handleImsStateChange: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mCurrentSimImsi:Ljava/lang/String;

    .line 1869
    invoke-direct {p0}, ReadEpdgSettingFromIMS()V

    .line 1870
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentSimImsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableEpdg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mEnableEpdg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    sget-boolean v0, mEnableEpdg:Z

    if-eqz v0, :cond_b8

    .line 1874
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1876
    iget-object v0, p0, mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_b7

    iget-object v0, p0, mCurrentSimImsi:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_b7

    .line 1877
    const/4 v0, 0x1

    sput-boolean v0, bIsSimReady:Z

    .line 1878
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0}, notifySimChangedEvent()V

    .line 1885
    :cond_b7
    :goto_b7
    return-void

    .line 1883
    :cond_b8
    invoke-direct {p0}, stopEpdgService()V

    goto :goto_b7
.end method

.method private handleMapconChange()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3344
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 3347
    .local v0, "apnType":Ljava/lang/String;
    sget-object v2, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3349
    .local v1, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3350
    iput v4, p0, mWifiMgrState:I

    .line 3353
    :cond_17
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {}, getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3357
    :cond_3b
    const-string v2, "[EPDGService]"

    const-string v3, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    invoke-static {}, isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 3359
    sput-boolean v4, isNotRequiredTimer:Z

    .line 3360
    iget-object v2, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3362
    :cond_4f
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3385
    :cond_54
    :goto_54
    return-void

    .line 3365
    :cond_55
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 3366
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3367
    invoke-direct {p0}, startWifiProfiling()V

    .line 3381
    :cond_65
    :goto_65
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 3382
    invoke-direct {p0, v0}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_54

    .line 3368
    :cond_73
    invoke-direct {p0}, isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-static {}, isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3369
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 3370
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 3372
    const-string v2, "[EPDGService]"

    const-string v3, "DNS is successful, start profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_65

    .line 3375
    :cond_a0
    const-string v2, "[EPDGService]"

    const-string v3, "DNS failed for all tries"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 3378
    :cond_a8
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_65
.end method

.method private handlePeriodicDpdTimerExpired(Ljava/lang/String;)V
    .registers 9
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1688
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePeriodicDpdTimerExpired: apnName is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0, p1}, getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    .line 1690
    .local v2, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v2, :cond_39

    .line 1691
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No valid SM found for apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :goto_38
    return-void

    .line 1694
    :cond_39
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1695
    .local v1, "periodicDpdExpired":Landroid/os/Message;
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v3

    if-nez v3, :cond_ed

    .line 1696
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_ed

    .line 1698
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePeriodicDpdTimerExpired: apnType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1701
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_ed

    .line 1702
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v3

    if-lt v3, v6, :cond_ed

    .line 1703
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "handlePeriodicDpdTimerExpired: E911 call is ongoing, no need to do dpd"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 1708
    :cond_9d
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 1709
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_c7

    .line 1710
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v3

    if-lt v3, v6, :cond_ed

    .line 1711
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "handlePeriodicDpdTimerExpired: IMS call is connected, no need to do dpd"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1715
    :cond_c7
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_ed

    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_ed

    .line 1717
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "handlePeriodicDpdTimerExpired: Call status is neither idle nor blockhandoff. No need of DPD in connected mode"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1722
    :cond_e5
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "handlePeriodicDpdTimerExpired: For all other apntypes, allow DPD"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_ed
    if-eqz v1, :cond_100

    .line 1728
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "handlePeriodicDpdTimerExpired: Sending PERIODIC_DPD_TIMER_EXPIRED to state machine"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const/16 v3, 0x10

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1730
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_38

    .line 1732
    :cond_100
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePeriodicDpdTimerExpired: Unable to obtain  message for SM with apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1657
    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1658
    invoke-direct {p0, p1}, getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .line 1659
    .local v1, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v1, :cond_2b

    .line 1660
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_2a
    return-void

    .line 1664
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2b
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1665
    .local v0, "dataRetryExpired":Landroid/os/Message;
    if-eqz v0, :cond_58

    .line 1666
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1669
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1680
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_44
    :goto_44
    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {v2}, getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1681
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_2a

    .line 1671
    .restart local v0    # "dataRetryExpired":Landroid/os/Message;
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_58
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 1683
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_72
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private handleSimInsertChange()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1000
    invoke-static {}, getIsSimCardRemoved()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1001
    invoke-static {v4}, setIsSimCardRemoved(Z)V

    .line 1006
    sget-boolean v1, mIsEpdgInitialized:Z

    if-eqz v1, :cond_a5

    .line 1007
    sget-object v1, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1008
    .local v0, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1009
    iput v5, p0, mWifiMgrState:I

    .line 1013
    :goto_1e
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1014
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1016
    :cond_2f
    invoke-static {}, isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1017
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    .line 1019
    :cond_38
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prev imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Prev imsi2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p0, mCurrentSimImsi:Ljava/lang/String;

    if-eqz v1, :cond_8a

    iget-object v1, p0, mCurrentSimImsi:Ljava/lang/String;

    iget-object v2, p0, mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    :cond_8a
    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v1

    if-ne v1, v5, :cond_a5

    iget-object v1, p0, mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v1, :cond_a5

    iget-object v1, p0, mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v2, p0, mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 1023
    :cond_9e
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1027
    .end local v0    # "wifi":Landroid/net/NetworkInfo;
    :cond_a5
    return-void

    .line 1011
    .restart local v0    # "wifi":Landroid/net/NetworkInfo;
    :cond_a6
    iput v4, p0, mWifiMgrState:I

    goto/16 :goto_1e
.end method

.method private handleSimRemovedChange()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 970
    const-string v1, "[EPDGService]"

    const-string v2, "Inside handleSimRemovedChange()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    sget-boolean v1, mIsEpdgInitialized:Z

    if-eqz v1, :cond_61

    .line 972
    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 973
    sget-object v1, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 974
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 977
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 979
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 980
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 981
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 983
    :cond_3e
    invoke-static {v3}, setIsOnDemandApnConnectionFailed(Z)V

    .line 984
    iput v3, p0, mFqdnRetryCount:I

    .line 985
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 986
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 988
    :cond_54
    sget-boolean v1, mEnableEpdg:Z

    if-eqz v1, :cond_61

    .line 990
    :try_start_58
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5f} :catch_62

    .line 994
    :goto_5f
    sput-boolean v3, mEnableEpdg:Z

    .line 997
    :cond_61
    return-void

    .line 991
    :catch_62
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1754
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "action":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const/4 v3, -0x1

    .line 1757
    .local v3, "simSlot":I
    const/4 v5, -0x1

    .line 1758
    .local v5, "subscription":I
    sget-object v6, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 1759
    const-string v6, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1761
    invoke-static {v9}, setIsimState(Z)V

    .line 1762
    sget-boolean v6, mIsEpdgInitialized:Z

    if-nez v6, :cond_3d

    invoke-static {v11}, setIsSimCardRemoved(Z)V

    .line 1763
    :cond_3d
    invoke-static {}, getSimState()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1764
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: SIM is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    if-ne v3, v9, :cond_59

    .line 1766
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSim2Imsi:Ljava/lang/String;

    .line 1770
    :goto_55
    invoke-direct {p0}, notifySimChangedEvent()V

    .line 1839
    :cond_58
    :goto_58
    return-void

    .line 1768
    :cond_59
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSimImsi:Ljava/lang/String;

    goto :goto_55

    .line 1772
    :cond_62
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1773
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1774
    .local v4, "simState":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const-string v2, "LOADED"

    .line 1776
    .local v2, "loadedstate":Ljava/lang/String;
    const-string v0, "ABSENT"

    .line 1777
    .local v0, "absentState":Ljava/lang/String;
    if-eqz v4, :cond_17f

    .line 1778
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 1779
    const-string/jumbo v6, "slot"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1780
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1781
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_SLOT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :cond_d8
    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 1785
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    sget-boolean v6, mIsEpdgInitialized:Z

    if-nez v6, :cond_100

    invoke-static {v11}, setIsSimCardRemoved(Z)V

    .line 1787
    :cond_100
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v6, :cond_131

    .line 1791
    if-ne v3, v9, :cond_125

    .line 1792
    sput-boolean v9, bIsSim2Ready:Z

    .line 1796
    :goto_108
    invoke-static {}, getIsimState()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1797
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: Isim is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    if-ne v3, v9, :cond_128

    .line 1799
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSim2Imsi:Ljava/lang/String;

    .line 1803
    :goto_120
    invoke-direct {p0}, notifySimChangedEvent()V

    goto/16 :goto_58

    .line 1794
    :cond_125
    sput-boolean v9, bIsSimReady:Z

    goto :goto_108

    .line 1801
    :cond_128
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSimImsi:Ljava/lang/String;

    goto :goto_120

    .line 1806
    :cond_131
    if-ne v3, v9, :cond_142

    .line 1807
    sput-boolean v9, bIsSim2Ready:Z

    .line 1808
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSim2Imsi:Ljava/lang/String;

    .line 1813
    :goto_13d
    invoke-direct {p0}, notifySimChangedEvent()V

    goto/16 :goto_58

    .line 1810
    :cond_142
    sput-boolean v9, bIsSimReady:Z

    .line 1811
    sget-object v6, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, mCurrentSimImsi:Ljava/lang/String;

    goto :goto_13d

    .line 1815
    :cond_14d
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1816
    if-ne v3, v9, :cond_173

    .line 1817
    iget-object v6, p0, mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, mPrevSim2Imsi:Ljava/lang/String;

    .line 1818
    iput-object v12, p0, mCurrentSim2Imsi:Ljava/lang/String;

    .line 1823
    :goto_15d
    invoke-static {v9}, setIsSimCardRemoved(Z)V

    .line 1824
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17a

    .line 1825
    sget v6, mDefaultSubID:I

    if-ne v6, v5, :cond_58

    .line 1826
    invoke-direct {p0}, handleSimRemovedChange()V

    goto/16 :goto_58

    .line 1820
    :cond_173
    iget-object v6, p0, mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, mPrevSimImsi:Ljava/lang/String;

    .line 1821
    iput-object v12, p0, mCurrentSimImsi:Ljava/lang/String;

    goto :goto_15d

    .line 1829
    :cond_17a
    invoke-direct {p0}, handleSimRemovedChange()V

    goto/16 :goto_58

    .line 1833
    :cond_17f
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 1837
    .end local v0    # "absentState":Ljava/lang/String;
    .end local v2    # "loadedstate":Ljava/lang/String;
    .end local v4    # "simState":Ljava/lang/String;
    :cond_19a
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: Invalid action received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58
.end method

.method private initAfterimsReady()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3002
    invoke-direct {p0}, getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v0

    .line 3003
    .local v0, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    invoke-direct {p0, v0}, setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3004
    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v2, mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v1, p0, mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 3005
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, mWifiOnUri:Landroid/net/Uri;

    iget-object v3, p0, mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3006
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v1, :cond_34

    .line 3007
    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v1}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3008
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, mRoamingUri:Landroid/net/Uri;

    iget-object v3, p0, mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3011
    :cond_34
    invoke-static {}, isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3012
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    .line 3013
    :cond_3d
    return-void
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2266
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 2270
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, mConnMgr:Landroid/net/ConnectivityManager;

    .line 2273
    sget-object v0, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2274
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v0, :cond_2e

    .line 2275
    sget-object v0, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2278
    :cond_2e
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIndependentEpdg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2279
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG service was started without ims service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2281
    const/4 v0, 0x1

    sput-boolean v0, mEnableEpdg:Z

    .line 2295
    :cond_4b
    :goto_4b
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    return-void

    .line 2282
    :cond_53
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2283
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 2284
    iget-object v0, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_4b

    .line 2285
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "registerForServiceStateChange..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v1, p0, mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 2287
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4b

    .line 2290
    :cond_8a
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "imsservice is not installed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public static is1xAvailable()Z
    .registers 2

    .prologue
    .line 613
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    .line 614
    const-string v0, "[EPDGService]"

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x1

    .line 618
    :goto_13
    return v0

    .line 617
    :cond_14
    const-string v0, "[EPDGService]"

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private is3gNetwork(I)Z
    .registers 3
    .param p1, "netType"    # I

    .prologue
    .line 5408
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/16 v0, 0x8

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xf

    if-ne p1, v0, :cond_15

    .line 5413
    :cond_13
    const/4 v0, 0x1

    .line 5415
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .registers 5

    .prologue
    .line 5307
    const/4 v1, 0x0

    .line 5308
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_19

    .line 5309
    sget-object v2, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_16

    .line 5311
    const/4 v1, 0x1

    .line 5308
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5314
    :cond_19
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5315
    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .registers 6
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "result":Z
    sget-object v3, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1125
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "operator":Ljava/lang/String;
    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1130
    :cond_2a
    const/4 v1, 0x1

    .line 1133
    :cond_2b
    return v1
.end method

.method public static isEpdgAvailable()Z
    .registers 2

    .prologue
    .line 1118
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isHandoverRequiredOnCdmaIndication()Z
    .registers 3

    .prologue
    .line 3274
    invoke-static {}, getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2213
    const/4 v2, 0x1

    .line 2215
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "Suppressed"

    :goto_17
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :try_start_22
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2219
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2224
    :cond_5c
    const/4 v2, 0x0

    .line 2226
    :cond_5d
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_76} :catch_7a

    move v3, v2

    .line 2230
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_77
    return v3

    :cond_78
    move-object v3, p1

    .line 2215
    goto :goto_17

    .line 2228
    :catch_7a
    move-exception v0

    .line 2229
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "[EPDGService]"

    const-string v4, "Address is not proper ip address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const/4 v3, 0x0

    goto :goto_77
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .registers 2

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mKeepAliveExpired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .registers 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mKeepAliveRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .registers 9
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5319
    const/4 v3, 0x0

    .line 5320
    .local v3, "result":Z
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_55

    aget-object v4, v0, v1

    .line 5321
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 5322
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_22

    .line 5324
    const/4 v3, 0x1

    .line 5320
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5325
    :cond_22
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_38

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 5328
    :cond_38
    const/4 v3, 0x1

    goto :goto_1f

    .line 5329
    :cond_3a
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_53

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 5332
    :cond_53
    const/4 v3, 0x1

    goto :goto_1f

    .line 5336
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_55
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5337
    return v3
.end method

.method public static isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .registers 9
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5292
    const/4 v3, 0x0

    .line 5293
    .local v3, "result":Z
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_1f

    aget-object v4, v0, v1

    .line 5294
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 5295
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1f

    .line 5296
    const/4 v3, 0x1

    .line 5301
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1f
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5303
    return v3

    .line 5293
    .restart local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private isRegistrationRequired(ZZZZZ)Z
    .registers 10
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 3232
    move v0, p1

    .line 3234
    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_d

    invoke-static {}, isVoWifiEnabled()Z

    move-result v2

    if-ne v2, p2, :cond_d

    .line 3235
    const/4 v0, 0x0

    .line 3239
    :cond_d
    if-eqz v0, :cond_4a

    .line 3240
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v3, :cond_30

    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3242
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    :goto_2f
    return v1

    .line 3244
    :cond_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_ba

    invoke-static {}, getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3246
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. voice is 1x"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 3249
    :cond_4a
    if-eqz p3, :cond_7a

    .line 3250
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_5f

    .line 3251
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 3253
    :cond_5f
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3254
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 3257
    :cond_7a
    if-eqz p5, :cond_aa

    .line 3258
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_8f

    .line 3259
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 3261
    :cond_8f
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3262
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 3265
    :cond_aa
    if-nez v0, :cond_ba

    if-nez p3, :cond_ba

    if-nez p5, :cond_ba

    .line 3266
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. nothing changed"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 3269
    :cond_ba
    const-string v1, "[EPDGService]"

    const-string v2, "IMS RegistrationRequired - HO delay"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    const/4 v1, 0x1

    goto/16 :goto_2f
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2137
    const/4 v0, 0x0

    .line 2139
    .local v0, "result":Z
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_d
    const/4 v0, 0x1

    .line 2141
    :goto_e
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return v0

    .line 2139
    :cond_28
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 4

    .prologue
    .line 4364
    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4365
    .local v0, "videoSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_11

    .line 4366
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4369
    :goto_10
    return-object v1

    .line 4368
    :cond_11
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_37

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_10

    :cond_37
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_10
.end method

.method public static isVoWifiEnabled()Z
    .registers 2

    .prologue
    .line 4349
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 4

    .prologue
    .line 4353
    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4354
    .local v0, "volteSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_11

    .line 4355
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4359
    :goto_10
    return-object v1

    .line 4358
    :cond_11
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_37

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_10

    :cond_37
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_10
.end method

.method public static isW2LRecommended(I)Z
    .registers 6
    .param p0, "rilCid"    # I

    .prologue
    .line 5793
    sget-object v2, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5794
    .local v0, "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: rilCid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    const/4 v1, 0x0

    .line 5797
    .local v1, "result":Z
    if-eqz v0, :cond_36

    invoke-static {v0}, isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 5798
    :cond_36
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5807
    :goto_3e
    return v1

    .line 5799
    :cond_3f
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 5801
    :cond_50
    sget-object v2, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    .line 5802
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 5804
    :cond_74
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v2

    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3e
.end method

.method public static isWifiCallingEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4338
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v3, v4, :cond_e

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v3, v4, :cond_17

    :cond_e
    move v0, v2

    .line 4340
    .local v0, "bVoWifi":Z
    :goto_f
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v3, :cond_15

    if-nez v0, :cond_19

    :cond_15
    move v2, v0

    .line 4344
    :cond_16
    :goto_16
    return v2

    .end local v0    # "bVoWifi":Z
    :cond_17
    move v0, v1

    .line 4338
    goto :goto_f

    .line 4344
    .restart local v0    # "bVoWifi":Z
    :cond_19
    invoke-static {}, getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v3, v4, :cond_16

    move v2, v1

    goto :goto_16
.end method

.method private isWifiConnected()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4028
    iget v1, p0, mWifiMgrState:I

    if-ne v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private movePdnFromWifi()V
    .registers 7

    .prologue
    .line 5278
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_52

    .line 5280
    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4f

    .line 5282
    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5283
    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5284
    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 5285
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5286
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5279
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5289
    :cond_52
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .registers 5

    .prologue
    .line 1180
    sget-boolean v2, mIsEpdgInitialized:Z

    if-nez v2, :cond_5

    .line 1188
    :cond_4
    return-void

    .line 1182
    :cond_5
    const/4 v1, 0x1

    .local v1, "cid":I
    :goto_6
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_4

    .line 1183
    sget-object v2, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 1185
    invoke-direct {p0, v0}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1182
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .registers 9
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5783
    if-eqz p2, :cond_1b

    .line 5784
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 5790
    :goto_1a
    return-void

    .line 5788
    :cond_1b
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private notifySimChangedEvent()V
    .registers 3

    .prologue
    .line 1923
    sget-boolean v0, mIsEpdgInitialized:Z

    if-nez v0, :cond_f

    .line 1924
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p0}, bootCompleted()V

    .line 1929
    :goto_e
    return-void

    .line 1927
    :cond_f
    invoke-direct {p0}, handleSimInsertChange()V

    goto :goto_e
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .registers 9
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5774
    if-eqz p2, :cond_1b

    .line 5775
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 5781
    :goto_1a
    return-void

    .line 5779
    :cond_1b
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private onDbAccessCompleted()V
    .registers 3

    .prologue
    .line 727
    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 729
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 730
    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 1137
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setKeepAliveRunning(Z)V

    .line 1139
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_34

    sget v0, mActiveRat:I

    if-ne v0, v2, :cond_34

    .line 1141
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0}, pingAsyncInternet()V

    .line 1144
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, startAlarmForInternetKeepAlive(J)V

    .line 1156
    :cond_33
    :goto_33
    return-void

    .line 1145
    :cond_34
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_56

    sget v0, mActiveRat:I

    if-eq v0, v2, :cond_56

    .line 1147
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, startAlarmForInternetKeepAlive(J)V

    goto :goto_33

    .line 1150
    :cond_56
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v3, :cond_33

    sget v0, mActiveRat:I

    if-ne v0, v2, :cond_33

    .line 1152
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-direct {p0, v3}, setKeepAliveExpired(Z)V

    goto :goto_33
.end method

.method private onNetworkStatusChanged()V
    .registers 10

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5429
    invoke-static {}, getIsSimCardRemoved()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5430
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "onNetworkStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5569
    :cond_12
    :goto_12
    return-void

    .line 5434
    :cond_13
    sget v2, mActiveRat:I

    .line 5440
    .local v2, "mExistingActiveRat":I
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5441
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 5442
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 5443
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 5454
    .local v3, "netType":I
    :goto_3b
    invoke-static {}, getIsCellularAvailable()Z

    move-result v1

    .line 5455
    .local v1, "currentCellular":Z
    sget-object v4, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_72

    .line 5456
    invoke-virtual {p0}, bootCompleted()V

    goto :goto_12

    .line 5445
    .end local v1    # "currentCellular":Z
    .end local v3    # "netType":I
    :cond_4b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_3b

    .line 5448
    .end local v3    # "netType":I
    :cond_54
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 5449
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_3b

    .line 5451
    .end local v3    # "netType":I
    :cond_69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_3b

    .line 5460
    .restart local v1    # "currentCellular":Z
    :cond_72
    sget-boolean v4, mIsEpdgInitialized:Z

    if-nez v4, :cond_7e

    .line 5461
    const-string v4, "[EPDGService]"

    const-string v5, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 5465
    :cond_7e
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_ac

    .line 5466
    sget-boolean v4, mCellularAvailable:Z

    if-eq v4, v1, :cond_ac

    .line 5467
    if-nez v1, :cond_1d3

    .line 5468
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is not available, disable Wifi thresholds if Idle"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_ac

    .line 5470
    invoke-static {v6}, setIsRssiDisabledForProfiling(Z)V

    .line 5471
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 5472
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5473
    invoke-direct {p0}, startWifiProfiling()V

    .line 5489
    :cond_ac
    :goto_ac
    sget v4, mActiveRat:I

    if-ne v3, v4, :cond_b4

    sget-boolean v4, mCellularAvailable:Z

    if-eq v4, v1, :cond_1b4

    .line 5490
    :cond_b4
    sput-boolean v1, mCellularAvailable:Z

    .line 5491
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 5495
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v3, :cond_c2

    if-nez v1, :cond_257

    .line 5496
    :cond_c2
    sget-object v4, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5497
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f5

    .line 5498
    invoke-direct {p0}, isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 5499
    const-string v4, "[EPDGService]"

    const-string v5, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5500
    invoke-direct {p0}, onWifiConnected()V

    .line 5529
    :cond_ed
    :goto_ed
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-direct {p0}, getIsNetworkRoaming()Z

    move-result v4

    sget-boolean v5, mRoaming:Z

    if-eq v4, v5, :cond_10e

    .line 5530
    invoke-direct {p0}, getIsNetworkRoaming()Z

    move-result v4

    sput-boolean v4, mRoaming:Z

    .line 5531
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v4, :cond_10e

    .line 5532
    sget-object v4, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v4}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 5535
    :cond_10e
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    sget-boolean v4, mDisabledByNoRan:Z

    if-eqz v4, :cond_13c

    if-eqz v3, :cond_13c

    if-ne v1, v6, :cond_13c

    invoke-direct {p0}, isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_13c

    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-nez v4, :cond_13c

    .line 5538
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5539
    invoke-direct {p0}, onWifiConnected()V

    .line 5540
    sput-boolean v7, mDisabledByNoRan:Z

    .line 5542
    :cond_13c
    invoke-direct {p0, v3}, is3gNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_14a

    sget v4, mActiveRat:I

    invoke-direct {p0, v4}, is3gNetwork(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 5545
    :cond_14a
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Rat Changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mActiveRat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mActiveRat:I

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5550
    sput v3, mActiveRat:I

    .line 5551
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5, v3}, startTimerForPdnXfer(JI)V

    .line 5552
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v4, :cond_1b4

    .line 5553
    sget v4, mActiveRat:I

    if-ne v4, v8, :cond_29b

    .line 5554
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v4

    if-nez v4, :cond_292

    .line 5555
    iget-object v4, p0, mLteOn:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5567
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_1b4
    :goto_1b4
    sput-boolean v1, mCellularAvailable:Z

    .line 5568
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCellularAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, mCellularAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 5477
    :cond_1d3
    invoke-static {}, getIsRssiDisabledForProfiling()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 5478
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is available, enable Wifi thresholds"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5479
    invoke-static {v7}, setIsRssiDisabledForProfiling(Z)V

    .line 5480
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 5481
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5482
    invoke-direct {p0}, startWifiProfiling()V

    goto/16 :goto_ac

    .line 5502
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_1f5
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 5503
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_21a

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_ed

    .line 5505
    :cond_21a
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5506
    invoke-static {}, isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 5507
    sput-boolean v6, isNotRequiredTimer:Z

    .line 5508
    iget-object v4, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5510
    :cond_22e
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 5511
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5512
    sput-boolean v6, mDisabledByNoRan:Z

    goto/16 :goto_ed

    .line 5515
    :cond_23f
    invoke-direct {p0}, isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-static {}, isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 5516
    const-string v4, "[EPDGService]"

    const-string v5, "Rat us unknown, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5517
    invoke-direct {p0}, onWifiConnected()V

    goto/16 :goto_ed

    .line 5519
    :cond_257
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-direct {p0}, isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_ed

    const/16 v4, 0x12

    if-eq v3, v4, :cond_ed

    if-eqz v1, :cond_ed

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 5522
    const-string v4, "[EPDGService]"

    const-string v5, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5523
    invoke-static {}, isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_28b

    .line 5524
    sput-boolean v6, isNotRequiredTimer:Z

    .line 5525
    iget-object v4, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5527
    :cond_28b
    sget-object v4, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_ed

    .line 5557
    :cond_292
    const-string v4, "[EPDGService]"

    const-string v5, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 5561
    :cond_29b
    if-ne v2, v8, :cond_1b4

    .line 5562
    const-string v4, "[EPDGService]"

    const-string v5, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5563
    iget-object v4, p0, mLteOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1b4
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5419
    invoke-static {}, getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5420
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "onServiceStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    :cond_e
    :goto_e
    return-void

    .line 5423
    :cond_f
    invoke-direct {p0}, onNetworkStatusChanged()V

    .line 5424
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5425
    invoke-direct {p0, p1}, checkVopsStatus(Landroid/telephony/ServiceState;)V

    goto :goto_e
.end method

.method private onSystemSelectTimerFinish()V
    .registers 5

    .prologue
    .line 3585
    invoke-direct {p0}, isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3586
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3591
    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3610
    :goto_2c
    return-void

    .line 3594
    :cond_2d
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_56

    .line 3595
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3598
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3599
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_2c

    .line 3601
    :cond_4e
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 3604
    :cond_56
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 3608
    :cond_5e
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private onVoWifiProvisioningStateChanged(I)V
    .registers 3
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3192
    if-nez p1, :cond_a

    .line 3196
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3197
    invoke-direct {p0, p1}, setVowifiSetting(I)V

    .line 3199
    :cond_a
    return-void
.end method

.method private onVolteProvisioningStateChanged(I)V
    .registers 5
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3174
    if-nez p1, :cond_b

    .line 3178
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3179
    invoke-direct {p0, p1}, setVowifiSetting(I)V

    .line 3189
    :goto_a
    return-void

    .line 3185
    :cond_b
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_1e
    invoke-direct {p0, v0}, setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    goto :goto_a

    :cond_22
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_1e
.end method

.method private onVopsStatusChanged(I)V
    .registers 8
    .param p1, "vops_enabled"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2994
    if-ne p1, v5, :cond_1b

    move v0, v5

    :goto_5
    invoke-static {v0}, setIsVoPSEnabled(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 2995
    invoke-direct/range {v0 .. v5}, isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2996
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-direct {p0, v0}, setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 2998
    :cond_17
    invoke-direct {p0, p1}, MoveToBasedOnVopsOrSsac(I)V

    .line 2999
    return-void

    :cond_1b
    move v0, v1

    .line 2994
    goto :goto_5
.end method

.method private onWifiConnected()V
    .registers 4

    .prologue
    .line 4560
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4562
    const-string v1, "[EPDGService]"

    const-string v2, "IPv6 support is enabled and wifi ip config timer is running, no need to perform wifi connected. It will happen after config timer expiry"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    :goto_1d
    return-void

    .line 4566
    :cond_1e
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_41

    .line 4569
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 4570
    :cond_41
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 4571
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4573
    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_1d

    .line 4576
    :cond_62
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    iget v1, p0, mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mFqdnRetryCount:I

    .line 4578
    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4579
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d

    .line 4583
    .end local v0    # "msg":Landroid/os/Message;
    :cond_7d
    sget-object v1, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_90

    .line 4584
    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4585
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_1d

    .line 4587
    :cond_90
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private onWifiGoodEnough()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4650
    iget-object v1, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v1, v3}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 4651
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVodPreferredMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4652
    invoke-direct {p0, v3}, updateCpEpdgHoThreshold(Z)V

    .line 4653
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4654
    .local v0, "wifiIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4655
    const-string v1, "EPDG_AVAILABLE"

    invoke-static {v1}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 4656
    const-string v1, "[EPDGService]"

    const-string v2, "Send EPDG Available broadcast"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4657
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4659
    invoke-direct {p0, v3}, sendWifiStatusChangedNotification(Z)V

    .line 4661
    invoke-static {v3}, setIsEpdgAvailable(Z)V

    .line 4663
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 4664
    invoke-direct {p0}, isKeepAliveExpired()Z

    move-result v1

    if-eqz v1, :cond_69

    sget v1, mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_69

    .line 4666
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setKeepAliveExpired(Z)V

    .line 4669
    invoke-direct {p0}, pingAsyncInternet()V

    .line 4670
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4672
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, startAlarmForInternetKeepAlive(J)V

    .line 4674
    :cond_69
    invoke-direct {p0}, isKeepAliveRunning()Z

    move-result v1

    if-nez v1, :cond_84

    .line 4675
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, startAlarmForInternetKeepAlive(J)V

    .line 4680
    :cond_84
    return-void
.end method

.method private performDnsIfPossible()V
    .registers 4

    .prologue
    .line 2235
    invoke-direct {p0}, isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2236
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_33

    .line 2237
    sget-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_32

    .line 2238
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {v2}, getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 2240
    sget-object v0, mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2259
    :cond_32
    :goto_32
    return-void

    .line 2242
    :cond_33
    invoke-static {}, getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v0, v1, :cond_73

    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_73

    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 2245
    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    invoke-static {v0}, setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2246
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2248
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-direct {p0}, startWifiProfiling()V

    goto :goto_32

    .line 2252
    :cond_6b
    const-string v0, "[EPDGService]"

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 2255
    :cond_73
    const-string v0, "[EPDGService]"

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private pingAsyncInternet()V
    .registers 6

    .prologue
    .line 1159
    iget-object v0, p0, mDnsPinger:Lcom/sec/epdg/DnsPinger;

    if-nez v0, :cond_d

    .line 1160
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mDnsPigner not intialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :goto_c
    return-void

    .line 1163
    :cond_d
    iget-object v0, p0, mCurrentNetwork:Landroid/net/Network;

    if-nez v0, :cond_1a

    .line 1164
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mCurrentNetwork is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1167
    :cond_1a
    iget-object v0, p0, mDnsPinger:Lcom/sec/epdg/DnsPinger;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, mCurrentNetwork:Landroid/net/Network;

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I

    goto :goto_c
.end method

.method private printEpdgSettingsThreshold()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resetDataDependency()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 5356
    invoke-static {v0, v0}, setDataDependency(ZZ)V

    .line 5357
    return-void
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_mdn"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 735
    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    .registers 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 5212
    const/4 v2, 0x0

    .line 5213
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    if-nez p1, :cond_49

    .line 5215
    const-string v4, "[EPDGService]"

    const-string v5, "L2W handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5264
    :goto_48
    return v4

    .line 5219
    :cond_49
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 5220
    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v4, v5, :cond_7c

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_7c

    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_7c

    .line 5224
    const-string v4, "[EPDGService]"

    const-string v5, "Block L2W as registration is not done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5225
    goto :goto_48

    .line 5228
    :cond_7c
    sget-object v4, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 5229
    const-string v4, "[EPDGService]"

    const-string v5, "1x scanning is on, wait for TEPDG1XSCANNING"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5230
    goto :goto_48

    .line 5233
    :cond_8f
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5239
    .local v1, "networkType":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5241
    if-eq v7, v1, :cond_116

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 5242
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    sget-object v5, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 5244
    sget-object v4, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_e3

    .line 5245
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay L2W handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    const/4 v4, 0x1

    goto/16 :goto_48

    .line 5249
    :cond_e3
    :try_start_e3
    const-string v4, "[EPDGService]"

    const-string v5, "Firing L2W handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5250
    invoke-direct {p0, v1}, startHandoverLteToWifi(I)I
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_ed} :catch_f4

    move-result v3

    .line 5251
    .local v3, "ret":I
    if-eq v3, v7, :cond_f1

    .line 5252
    const/4 v2, 0x1

    .end local v3    # "ret":I
    :cond_f1
    :goto_f1
    move v4, v2

    .line 5264
    goto/16 :goto_48

    .line 5254
    :catch_f4
    move-exception v0

    .line 5255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L2W Handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    .line 5258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10e
    const-string v4, "[EPDGService]"

    const-string v5, "L2W is not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    .line 5261
    :cond_116
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry L2W handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .registers 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5159
    const/4 v2, 0x0

    .line 5160
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    if-nez p1, :cond_49

    .line 5162
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5208
    :goto_48
    return v4

    .line 5165
    :cond_49
    sget-object v4, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 5166
    const-string v4, "[EPDGService]"

    const-string v5, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5167
    goto :goto_48

    .line 5170
    :cond_5c
    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 5171
    const-string v4, "[EPDGService]"

    const-string v5, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5172
    goto :goto_48

    .line 5175
    :cond_6d
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5176
    .local v1, "networkType":I
    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5177
    .local v3, "rule":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v1, :cond_106

    .line 5178
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 5179
    sget-object v4, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_98

    .line 5180
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay W2L handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    const/4 v4, 0x1

    goto :goto_48

    .line 5183
    :cond_98
    invoke-direct {p0}, getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-static {}, getIsLteAvailable()Z

    move-result v4

    if-nez v4, :cond_bf

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bf

    .line 5185
    const-string v4, "[EPDGService]"

    const-string v5, "W2L recommended but LTE is not available, send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5186
    invoke-static {}, getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, sendEpdgRegisterBroadcast(Z)V

    .line 5187
    invoke-direct {p0, v7}, setHasPendingCdmaIndication(Z)V

    .line 5190
    :cond_bf
    :try_start_bf
    const-string v4, "[EPDGService]"

    const-string v5, "Firing W2L handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    invoke-direct {p0, v1}, startHandOverWifiToLte(I)I
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c9} :catch_cd

    .line 5192
    const/4 v2, 0x1

    :goto_ca
    move v4, v2

    .line 5208
    goto/16 :goto_48

    .line 5193
    :catch_cd
    move-exception v0

    .line 5194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 5197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e7
    invoke-direct {p0}, getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 5198
    const-string v4, "[EPDGService]"

    const-string v5, "W2L not recommended, still send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5199
    invoke-static {}, getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, sendEpdgRegisterBroadcast(Z)V

    .line 5200
    invoke-direct {p0, v7}, setHasPendingCdmaIndication(Z)V

    .line 5202
    :cond_fe
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 5205
    :cond_106
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry W2L handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca
.end method

.method private sendEpdgDeregisterBroadcastIfRequired(Z)Z
    .registers 7
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5028
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-nez v3, :cond_7

    .line 5044
    :cond_6
    :goto_6
    return v1

    .line 5031
    :cond_7
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v3, v4, :cond_21

    :cond_1f
    if-eqz p1, :cond_6

    .line 5033
    :cond_21
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "sendEpdgDeregisterBroadcast: send deregi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5034
    if-eqz p1, :cond_3d

    .line 5035
    sput-boolean v2, mDeregiForHOFail:Z

    .line 5039
    :goto_2d
    sput-boolean v2, mDisconnectRequired:Z

    .line 5040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5041
    .local v0, "deregiIntent":Landroid/content/Intent;
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    .line 5042
    goto :goto_6

    .line 5037
    .end local v0    # "deregiIntent":Landroid/content/Intent;
    :cond_3d
    sput-boolean v1, mDeregiForHOFail:Z

    goto :goto_2d
.end method

.method private sendEpdgRegisterBroadcast(Z)V
    .registers 6
    .param p1, "cdmaAvailability"    # Z

    .prologue
    .line 5014
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_5

    .line 5025
    :goto_4
    return-void

    .line 5017
    :cond_5
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEpdgRegisterBroadcast with cdmaAvailability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5018
    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_30

    .line 5019
    const-string v1, "[EPDGService]"

    const-string v2, "Call in progress, dont send cdmaAvailability to IMS"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 5022
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5023
    .local v0, "epdgRegisterIntent":Landroid/content/Intent;
    const-string v1, "cdmaAvailability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5024
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public static sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .registers 5
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 3292
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3302
    :cond_14
    :goto_14
    return-void

    .line 3296
    :cond_15
    if-eqz p1, :cond_14

    .line 3297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v0, "infoToIMSCII":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    const-string/jumbo v1, "ikeerror"

    invoke-static {p1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3300
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .prologue
    .line 3388
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3389
    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_27

    .line 3390
    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 3393
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3394
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3398
    :goto_26
    return-void

    .line 3396
    :cond_27
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .registers 18
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3401
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3402
    .local v10, "ipsecEvent":Ljava/lang/String;
    const/4 v11, -0x1

    .line 3403
    .local v11, "networkType":I
    sget-object v12, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v13, p1, -0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 3404
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    if-eqz v0, :cond_44

    .line 3406
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v11

    .line 3407
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType returned:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    :cond_44
    if-eqz v0, :cond_49

    const/4 v12, -0x1

    if-ne v11, v12, :cond_89

    .line 3411
    :cond_49
    const-string v10, "Unknown"

    .line 3412
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " apnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipsecEvent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    :goto_6d
    sparse-switch v11, :sswitch_data_1b2

    .line 3484
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal NetworkType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    :cond_88
    :goto_88
    return-void

    .line 3414
    :cond_89
    invoke-static/range {p2 .. p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v10

    .line 3415
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ipsecEvent returned to UI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 3419
    :sswitch_a7
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3421
    .local v5, "infoToUiForInternet":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3422
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3423
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_88

    .line 3426
    .end local v5    # "infoToUiForInternet":Landroid/content/Intent;
    :sswitch_c0
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3428
    .local v4, "infoToUiForIms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3429
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3430
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_88

    .line 3433
    .end local v4    # "infoToUiForIms":Landroid/content/Intent;
    :sswitch_d9
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3435
    .local v2, "infoToUiForApp":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3436
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3437
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_88

    .line 3440
    .end local v2    # "infoToUiForApp":Landroid/content/Intent;
    :sswitch_f2
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3442
    .local v6, "infoToUiForMms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3443
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3444
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3445
    const-string/jumbo v12, "mms"

    invoke-static {v12}, getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "xcap"

    invoke-static {v13}, getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 3447
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3449
    .local v9, "infoToUiForXcap1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3450
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3451
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_88

    .line 3455
    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    .end local v9    # "infoToUiForXcap1":Landroid/content/Intent;
    :sswitch_138
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v8, "infoToUiForXcap":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3458
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3459
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3460
    const-string/jumbo v12, "xcap"

    invoke-static {v12}, getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mms"

    invoke-static {v13}, getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 3462
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3465
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3466
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_88

    .line 3470
    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    .end local v8    # "infoToUiForXcap":Landroid/content/Intent;
    :sswitch_17e
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3472
    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3473
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3474
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_88

    .line 3477
    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :sswitch_198
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3479
    .local v1, "infoToUiForAdmin":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3480
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3481
    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_88

    .line 3417
    :sswitch_data_1b2
    .sparse-switch
        0x0 -> :sswitch_a7
        0x2 -> :sswitch_f2
        0xb -> :sswitch_c0
        0xc -> :sswitch_d9
        0xf -> :sswitch_17e
        0x17 -> :sswitch_198
        0x1b -> :sswitch_138
    .end sparse-switch
.end method

.method private sendWifiDelayRequest(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5047
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWifiDelayRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5048
    if-nez p1, :cond_1e

    .line 5049
    sput-boolean v3, mDisconnectRequired:Z

    .line 5051
    :cond_1e
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_44

    .line 5052
    sget-object v2, mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 5053
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5054
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x51

    iput v2, v0, Landroid/os/Message;->what:I

    .line 5055
    if-eqz p1, :cond_45

    const/4 v2, 0x1

    :goto_39
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5056
    if-eqz p1, :cond_3f

    const/16 v3, 0xfa0

    :cond_3f
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 5057
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 5059
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_44
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_45
    move v2, v3

    .line 5055
    goto :goto_39
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .registers 14
    .param p1, "isWifiConnected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5105
    const/4 v6, 0x0

    .line 5106
    .local v6, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 5107
    sget-object v7, mContext:Landroid/content/Context;

    invoke-static {v7}, getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 5110
    :cond_b
    const/4 v3, 0x0

    .line 5111
    .local v3, "isSsidChanged":Z
    iget-object v7, p0, mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1a

    if-eqz v6, :cond_1a

    iget-object v7, p0, mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_1a
    iget-object v7, p0, mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_45

    if-eqz v6, :cond_45

    .line 5113
    :cond_20
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5115
    const/4 v3, 0x1

    .line 5118
    :cond_45
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5122
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    .line 5124
    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_79
    if-ge v2, v4, :cond_a1

    aget-object v1, v0, v2

    .line 5126
    .local v1, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 5127
    .local v5, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    .line 5128
    if-eqz p1, :cond_9d

    move v7, v8

    :goto_8c
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 5129
    if-eqz p1, :cond_97

    .line 5130
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5131
    if-eqz v3, :cond_9f

    move v7, v8

    :goto_95
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 5133
    :cond_97
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5125
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_9d
    move v7, v9

    .line 5128
    goto :goto_8c

    :cond_9f
    move v7, v9

    .line 5131
    goto :goto_95

    .line 5135
    .end local v1    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a1
    if-eqz p1, :cond_ab

    .line 5138
    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_ac

    .line 5139
    sput-boolean v8, mL2WAfterEpdgStatusQuery:Z

    .line 5143
    :goto_a9
    iput-object v6, p0, mLastSsid:Ljava/lang/String;

    .line 5145
    :cond_ab
    return-void

    .line 5141
    :cond_ac
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_a9
.end method

.method private static setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .registers 1
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 588
    sput-object p0, mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 589
    return-void
.end method

.method private static setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .registers 1
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 578
    sput-object p0, mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 579
    return-void
.end method

.method private static setDataDependency(ZZ)V
    .registers 5
    .param p0, "value"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 5360
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_38

    sget-object v0, mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_3d

    .line 5366
    :cond_38
    sget-object v0, mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5372
    :cond_3d
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .registers 4

    .prologue
    .line 5398
    sget-object v1, mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5400
    .local v0, "mobileNetInfo":Landroid/net/NetworkInfo;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 5403
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, setDataDependencyIfRequired(I)V

    .line 5405
    :cond_2c
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .registers 6
    .param p0, "ratType"    # I

    .prologue
    .line 5375
    sget-object v2, mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5377
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 5378
    const/4 v0, 0x1

    .line 5379
    .local v0, "dataDependency":Z
    sparse-switch p0, :sswitch_data_4a

    .line 5387
    const/4 v0, 0x0

    .line 5390
    :sswitch_14
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5393
    const/4 v2, 0x0

    invoke-static {v0, v2}, setDataDependency(ZZ)V

    .line 5395
    .end local v0    # "dataDependency":Z
    :cond_48
    return-void

    .line 5379
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_14
        0xd -> :sswitch_14
        0xe -> :sswitch_14
    .end sparse-switch
.end method

.method private setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .registers 7
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 4269
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v2, :cond_5

    .line 4286
    :goto_4
    return-void

    .line 4272
    :cond_5
    sput-object p1, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4273
    sget-object v2, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v3, :cond_53

    .line 4275
    sget-object v2, mContext:Landroid/content/Context;

    const-string v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 4276
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 4278
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    :goto_21
    iput-object v2, p0, mBlackListCountry:Ljava/lang/String;

    .line 4279
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blacklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBlackListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    iget-object v2, p0, mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    if-nez v2, :cond_48

    .line 4281
    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v2, p0, mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4283
    :cond_48
    iget-object v2, p0, mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    iget-object v3, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 4285
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_53
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgTemporaryBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4278
    .restart local v0    # "country":Landroid/location/Country;
    .restart local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_73
    const-string v2, "UNKNOWN"

    goto :goto_21
.end method

.method private setHasPendingCdmaIndication(Z)V
    .registers 3
    .param p1, "isRequiredToSendCdmaIndication"    # Z

    .prologue
    .line 3278
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_5

    .line 3282
    :goto_4
    return-void

    .line 3281
    :cond_5
    sput-boolean p1, mIsRequiredToSendCdmaIndication:Z

    goto :goto_4
.end method

.method private setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .registers 5
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 3203
    sget-object v0, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-eq v0, v1, :cond_44

    .line 3204
    sput-object p1, mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 3205
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_57

    .line 3207
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3209
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 3210
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3228
    :cond_44
    :goto_44
    return-void

    .line 3214
    :cond_45
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 3215
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_44

    .line 3218
    :cond_57
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_44

    .line 3219
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3220
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3221
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_44

    .line 3222
    :cond_78
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3223
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3224
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_44
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 504
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, mIsAirplaneMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 505
    monitor-exit v0

    return-void

    .line 504
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsCsAvailable(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 677
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, mIsCsAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 678
    monitor-exit v0

    return-void

    .line 677
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsEpdgAvailable(Z)V
    .registers 5
    .param p0, "value"    # Z

    .prologue
    .line 681
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsEpdgAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string/jumbo v2, "ril.epdg.available"

    if-eqz p0, :cond_29

    const-string/jumbo v0, "true"

    :goto_24
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2d

    .line 683
    monitor-exit v1

    return-void

    .line 682
    :cond_29
    :try_start_29
    const-string/jumbo v0, "false"
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_24

    .line 681
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsLteAvailable(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 657
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, mIsLteAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 658
    monitor-exit v0

    return-void

    .line 657
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .registers 1
    .param p0, "isOnDemandApnConnectionFailedStatus"    # Z

    .prologue
    .line 1176
    sput-boolean p0, isOnDemandApnConnectionFailed:Z

    .line 1177
    return-void
.end method

.method private static setIsRssiDisabledForProfiling(Z)V
    .registers 4
    .param p0, "value"    # Z

    .prologue
    .line 563
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sput-boolean p0, mIsRssiDisabledForProfiling:Z

    .line 565
    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 495
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mIsScreenOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 496
    monitor-exit p0

    return-void

    .line 495
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setIsSimCardRemoved(Z)V
    .registers 4
    .param p0, "state"    # Z

    .prologue
    .line 706
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsSimCardRemoved: state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sput-boolean p0, mIsSimCardRemoved:Z

    .line 708
    return-void
.end method

.method private static declared-synchronized setIsSsacVoiceEnabled(Z)V
    .registers 5
    .param p0, "value"    # Z

    .prologue
    .line 523
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sput-boolean p0, mSsacVoiceEnabled:Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 525
    monitor-exit v1

    return-void

    .line 523
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setIsVoPSEnabled(Z)V
    .registers 5
    .param p0, "value"    # Z

    .prologue
    .line 513
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsVoPSEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sput-boolean p0, mIsVoPSEnabled:Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 515
    monitor-exit v1

    return-void

    .line 513
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setIsWifiRssiInPollingZone(Z)V
    .registers 4
    .param p0, "value"    # Z

    .prologue
    .line 553
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsWifiRssiInPollingZone: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sput-boolean p0, mIsWifiRssiInPollingZone:Z

    .line 555
    return-void
.end method

.method private static declared-synchronized setIsimState(Z)V
    .registers 5
    .param p0, "state"    # Z

    .prologue
    .line 696
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsimState: state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    sput-boolean p0, mIsIsimReady:Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 698
    monitor-exit v1

    return-void

    .line 696
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 424
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mKeepAliveExpired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 425
    monitor-exit p0

    return-void

    .line 424
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 420
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mKeepAliveRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .registers 18
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 4074
    sget-object v12, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4075
    .local v12, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_22

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4079
    .local v11, "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_8
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4080
    .local v10, "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_25

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4081
    .local v2, "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_10
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4082
    .local v3, "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_28

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4083
    .local v4, "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_18
    const/4 v9, 0x0

    .line 4084
    .local v9, "bootupChangeRequired":Z
    invoke-static {}, isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    .line 4085
    .local v7, "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_2b

    .line 4186
    :cond_21
    :goto_21
    return-void

    .line 4075
    .end local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .end local v9    # "bootupChangeRequired":Z
    .end local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_22
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_8

    .line 4080
    .restart local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .restart local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_25
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_10

    .line 4082
    .restart local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :cond_28
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_18

    .line 4089
    .restart local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .restart local v9    # "bootupChangeRequired":Z
    :cond_2b
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_56

    invoke-direct/range {p0 .. p0}, getIsNetworkRoaming()Z

    move-result v5

    .line 4091
    .local v5, "bRoaming":Z
    :goto_33
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_58

    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-direct/range {p0 .. p0}, getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v14

    if-ne v13, v14, :cond_58

    const/4 v8, 0x1

    .line 4093
    .local v8, "bWifiPf":Z
    :goto_40
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_5a

    const/4 v6, 0x1

    .line 4096
    .local v6, "bVolteState":Z
    :goto_45
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5c

    if-nez v5, :cond_5c

    .line 4097
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - policy changed but it is home"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 4089
    .end local v5    # "bRoaming":Z
    .end local v6    # "bVolteState":Z
    .end local v8    # "bWifiPf":Z
    :cond_56
    const/4 v5, 0x0

    goto :goto_33

    .line 4091
    .restart local v5    # "bRoaming":Z
    :cond_58
    const/4 v8, 0x0

    goto :goto_40

    .line 4093
    .restart local v8    # "bWifiPf":Z
    :cond_5a
    const/4 v6, 0x0

    goto :goto_45

    .line 4100
    .restart local v6    # "bVolteState":Z
    :cond_5c
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_80

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_80

    .line 4105
    if-eqz v5, :cond_145

    if-eqz v8, :cond_145

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_145

    .line 4107
    const/4 v9, 0x1

    .line 4108
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down at home and boot up in roaming area and WIFI preferred"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    :cond_80
    :goto_80
    const-string v13, "[EPDGService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyTable- VoWIFI :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "roaming : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "reason :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Volte status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_19a

    .line 4127
    if-eqz v6, :cond_17a

    .line 4128
    if-eqz v8, :cond_16f

    if-eqz v5, :cond_16f

    .line 4129
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_16b

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4140
    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvoicecall"

    invoke-virtual {v13, v14, v15, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4143
    if-eqz v8, :cond_e7

    if-eqz v5, :cond_e7

    .line 4144
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_192

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4145
    :goto_e1
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_196

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4148
    :cond_e7
    :goto_e7
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4150
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_ff

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_10b

    .line 4153
    :cond_ff
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvideovoicecall"

    invoke-virtual {v13, v14, v15, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4175
    :cond_10b
    :goto_10b
    if-nez v9, :cond_125

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_115

    if-nez v5, :cond_125

    :cond_115
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_11d

    if-nez v5, :cond_125

    :cond_11d
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_131

    if-eqz v8, :cond_131

    .line 4179
    :cond_125
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "ims"

    invoke-virtual {v13, v14, v15, v11}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 4182
    :cond_131
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_21

    .line 4183
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "emergency"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_21

    .line 4112
    :cond_145
    if-nez v5, :cond_161

    if-eqz v8, :cond_161

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_161

    .line 4114
    const/4 v9, 0x1

    .line 4115
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down in roaming + WIFI perferred and boot up in home area"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 4119
    :cond_161
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable- skip "

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 4129
    :cond_16b
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_cb

    .line 4131
    :cond_16f
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_177

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_175
    goto/16 :goto_cb

    :cond_177
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_175

    .line 4134
    :cond_17a
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_18c

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4135
    :goto_180
    if-eqz v8, :cond_cb

    if-eqz v5, :cond_cb

    .line 4136
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_18f

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_18a
    goto/16 :goto_cb

    .line 4134
    :cond_18c
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_180

    .line 4136
    :cond_18f
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_18a

    .line 4144
    :cond_192
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_e1

    .line 4145
    :cond_196
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_e7

    .line 4158
    :cond_19a
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_10b

    .line 4160
    if-eqz v6, :cond_1d1

    .line 4161
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1ce

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4165
    :goto_1a6
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "imsvoicecall"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "imsvideovoicecall"

    aput-object v14, v1, v13

    .line 4168
    .local v1, "appList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4170
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4173
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_10b

    .line 4161
    .end local v1    # "appList":[Ljava/lang/String;
    :cond_1ce
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1a6

    .line 4163
    :cond_1d1
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1d8

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_1d7
    goto :goto_1a6

    :cond_1d8
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1d7
.end method

.method public static declared-synchronized setPreviousE911CallCount(I)V
    .registers 5
    .param p0, "count"    # I

    .prologue
    .line 533
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sput p0, mPreviousE911CallCount:I
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 535
    monitor-exit v1

    return-void

    .line 533
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreviousNonE911CallCount(I)V
    .registers 5
    .param p0, "count"    # I

    .prologue
    .line 543
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_3
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousNonE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sput p0, mPreviousNonE911CallCount:I
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 545
    monitor-exit v1

    return-void

    .line 543
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mRegistedNetworkStateChangeReceiver:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 433
    monitor-exit p0

    return-void

    .line 432
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .registers 8
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    const/4 v5, 0x0

    .line 4191
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_6e

    .line 4192
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_69

    .line 4193
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4194
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 4206
    :cond_12
    :goto_12
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWiFiCallEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    sget-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_7e

    .line 4211
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 4212
    sget-object v2, mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4213
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 4216
    :cond_47
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 4218
    invoke-static {v5}, setIsOnDemandApnConnectionFailed(Z)V

    .line 4220
    invoke-direct {p0}, getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4221
    sget-object v2, mContext:Landroid/content/Context;

    iget-object v3, p0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4222
    invoke-direct {p0, v5}, setRegistedNetworkStateChangeReceiver(Z)V

    .line 4224
    :cond_63
    sget-object v2, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    .line 4256
    :cond_68
    :goto_68
    return-void

    .line 4196
    :cond_69
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_12

    .line 4199
    :cond_6e
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_12

    .line 4201
    sput-object p1, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4202
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_12

    .line 4203
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    goto :goto_12

    .line 4226
    :cond_7e
    sget-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_9e

    .line 4231
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_68

    .line 4233
    :cond_9e
    sget-object v2, mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_68

    .line 4235
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_db

    .line 4236
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 4237
    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .line 4238
    .local v0, "BEST_RSRP":I
    invoke-static {}, isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .line 4240
    .local v1, "LOW_RSRP":I
    :goto_ca
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_68

    .line 4238
    .end local v1    # "LOW_RSRP":I
    :cond_d0
    sget-object v2, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    goto :goto_ca

    .line 4244
    .end local v0    # "BEST_RSRP":I
    :cond_db
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    .line 4245
    invoke-direct {p0}, getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_104

    .line 4246
    sget-object v2, mContext:Landroid/content/Context;

    iget-object v3, p0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4248
    sget-object v2, mContext:Landroid/content/Context;

    iget-object v3, p0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4250
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setRegistedNetworkStateChangeReceiver(Z)V

    .line 4252
    :cond_104
    sget-object v2, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    goto/16 :goto_68
.end method

.method private setVowifiSetting(I)V
    .registers 5
    .param p1, "enable"    # I

    .prologue
    .line 3166
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3169
    .local v0, "wifiCall":Landroid/content/Intent;
    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3170
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3171
    return-void
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .registers 8
    .param p1, "delay"    # J

    .prologue
    .line 4533
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const/4 v1, 0x1

    invoke-direct {p0, v1}, setKeepAliveRunning(Z)V

    .line 4537
    sget-object v1, mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4539
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mInternetKeepAlive:Landroid/content/Intent;

    .line 4540
    sget-object v1, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4542
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4545
    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .registers 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3986
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Wifi RSSI Level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getSavedWifiRssiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3993
    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .registers 8
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3929
    const/4 v3, 0x1

    sget-object v4, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v3, v4, :cond_23

    .line 3931
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3982
    :goto_22
    return v2

    .line 3938
    :cond_23
    invoke-direct {p0}, isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_42

    .line 3939
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 3944
    :cond_42
    sget-object v3, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3945
    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_71

    .line 3946
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 3954
    :cond_71
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v3, :cond_12b

    .line 3955
    sget-object v3, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_14c

    .line 3956
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " check for LTE availability"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_144

    .line 3959
    const-string v3, "[EPDGService]"

    const-string v4, "LTE is available, now check for wifi strength"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    sget-object v3, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 3961
    .local v1, "rssi":I
    sget-object v3, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    if-ge v1, v3, :cond_fe

    .line 3962
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifi rssi A: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    sget-object v3, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling()V

    goto/16 :goto_22

    .line 3968
    :cond_fe
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wifi rssi A: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    .end local v1    # "rssi":I
    :cond_12b
    :goto_12b
    const-string v2, "[HANDOFF]"

    const-string v3, "Starting HandOver To Wifi"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    sget-object v2, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v3, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v4, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v4, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3982
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 3972
    :cond_144
    const-string v2, "[EPDGService]"

    const-string v3, "Connected mode but LTE is lost, perform L2W handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 3975
    :cond_14c
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " perform L2W handover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b
.end method

.method private startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .registers 12
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3089
    const/4 v4, 0x0

    .line 3090
    .local v4, "retVal":Z
    if-nez p1, :cond_1e

    .line 3091
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3117
    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_1d
    return v5

    .line 3094
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_1e
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v7

    if-nez v7, :cond_9d

    .line 3095
    invoke-static {p1}, isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 3096
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_32
    if-ge v2, v3, :cond_6d

    aget-object v6, v0, v2

    .line 3097
    .local v6, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 3098
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getPeriodicDpdTimer()I

    move-result v1

    .line 3099
    .local v1, "dpdTimer":I
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: dpd time is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    if-lez v1, :cond_88

    .line 3101
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    .line 3103
    const/4 v4, 0x1

    .line 3116
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dpdTimer":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_6d
    :goto_6d
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3117
    .restart local v5    # "retVal":I
    goto :goto_1d

    .line 3105
    .end local v5    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "dpdTimer":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_88
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: dpd timer is 0"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 3096
    .end local v1    # "dpdTimer":I
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 3111
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_94
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 3114
    :cond_9d
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d
.end method

.method private startTimerForPdnXfer(JI)V
    .registers 7
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .prologue
    .line 5341
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5343
    iget-object v0, p0, mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_2f

    .line 5344
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5346
    :cond_2f
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 5347
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5348
    return-void
.end method

.method private startTimerOrPerformDns(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2146
    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_4a

    .line 2147
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2148
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2152
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 2210
    :cond_21
    :goto_21
    return-void

    .line 2153
    :cond_22
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-direct {p0, p1}, isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2155
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2159
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_21

    .line 2161
    :cond_42
    const-string v0, "[EPDGService]"

    const-string v1, "Link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 2163
    :cond_4a
    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_a6

    .line 2164
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-direct {p0, p1}, isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2166
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2167
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2168
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2171
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2173
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    goto :goto_21

    .line 2175
    :cond_84
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0}, performDnsIfPossible()V

    goto :goto_21

    .line 2179
    :cond_8f
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2180
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 2183
    :cond_9d
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 2186
    :cond_a6
    invoke-static {}, getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_21

    .line 2187
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2188
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2189
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 2190
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv6 and now ipv4 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2193
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2195
    invoke-direct {p0}, checkAndUpdateWifiAvailability()V

    goto/16 :goto_21

    .line 2197
    :cond_db
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv4 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-direct {p0}, performDnsIfPossible()V

    goto/16 :goto_21

    .line 2201
    :cond_e7
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-direct {p0, p1}, isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 2203
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 2206
    :cond_fc
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21
.end method

.method private startTimersIfNeeded()V
    .registers 4

    .prologue
    .line 4000
    sget-boolean v1, isNotRequiredTimer:Z

    if-nez v1, :cond_54

    .line 4002
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 4004
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4006
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4007
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4008
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4009
    const/4 v1, 0x1

    sput-boolean v1, isNotRequiredTimer:Z

    .line 4023
    .end local v0    # "salesCode":Ljava/lang/String;
    :goto_3b
    return-void

    .line 4011
    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_3c
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_3b

    .line 4014
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_44
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN not connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 4017
    :cond_4c
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 4020
    :cond_54
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "isNotRequireTimer is true. reset it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    const/4 v1, 0x0

    sput-boolean v1, isNotRequiredTimer:Z

    goto :goto_3b
.end method

.method private startWifiProfiling()V
    .registers 26

    .prologue
    .line 4594
    const/16 v24, 0x0

    .line 4595
    .local v24, "disableRSSI":Z
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v23

    .line 4599
    .local v23, "apnType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 4603
    :cond_32
    const-string v1, "[EPDGService]"

    const-string v2, "Don\'t start wifi profiling.MAPCON is LTE or LTE:WIFI(NOT OoS)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    :goto_39
    return-void

    .line 4606
    :cond_3a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mFqdnRetryCount:I

    .line 4609
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v1, :cond_51

    .line 4611
    const/16 v24, 0x1

    .line 4613
    :cond_51
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_59

    .line 4614
    invoke-static {}, getIsRssiDisabledForProfiling()Z

    move-result v24

    .line 4616
    :cond_59
    const-string v1, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 4617
    :cond_71
    const/16 v24, 0x0

    .line 4620
    :cond_73
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWifiProfiling() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    if-eqz v24, :cond_136

    const/16 v13, -0x64

    .line 4624
    .local v13, "goodDB":I
    :goto_92
    if-eqz v24, :cond_142

    const/16 v14, -0x64

    .line 4625
    .local v14, "badDB":I
    :goto_96
    if-eqz v24, :cond_14e

    const/16 v15, -0x64

    .line 4626
    .local v15, "thresholdDB":I
    :goto_9a
    if-eqz v24, :cond_15a

    const/16 v16, -0x64

    .line 4627
    .local v16, "goodDBWifiOnly":I
    :goto_9e
    if-eqz v24, :cond_166

    const/16 v17, -0x64

    .line 4628
    .local v17, "badDBWifiOnly":I
    :goto_a2
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v18

    .line 4629
    .local v18, "BEST_RSRP":I
    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_c0

    sget-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_ca

    .line 4631
    :cond_c0
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v18

    .line 4632
    :cond_ca
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v19

    .line 4633
    .local v19, "LOWEST_RSRP":I
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v20

    .line 4636
    .local v20, "cdmaRssi":I
    invoke-direct/range {p0 .. p0}, isHandoverRequiredOnCdmaIndication()Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 4637
    sget-object v1, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 4640
    :cond_eb
    sget-object v1, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mWifiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, mLteOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, mLteOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v7, v0, mCdmaOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, mCdmaOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v9, v0, mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v10, v0, mWifiRssiIntentReceived:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v11, v0, mPollingRssiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v12, v0, mPollingRssiOff:Ljava/lang/Runnable;

    sget-object v21, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v21

    sget-object v22, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v22

    invoke-virtual/range {v1 .. v22}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIII)V

    goto/16 :goto_39

    .line 4623
    .end local v13    # "goodDB":I
    .end local v14    # "badDB":I
    .end local v15    # "thresholdDB":I
    .end local v16    # "goodDBWifiOnly":I
    .end local v17    # "badDBWifiOnly":I
    .end local v18    # "BEST_RSRP":I
    .end local v19    # "LOWEST_RSRP":I
    .end local v20    # "cdmaRssi":I
    :cond_136
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    goto/16 :goto_92

    .line 4624
    .restart local v13    # "goodDB":I
    :cond_142
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v14

    goto/16 :goto_96

    .line 4625
    .restart local v14    # "badDB":I
    :cond_14e
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v15

    goto/16 :goto_9a

    .line 4626
    .restart local v15    # "thresholdDB":I
    :cond_15a
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v16

    goto/16 :goto_9e

    .line 4627
    .restart local v16    # "goodDBWifiOnly":I
    :cond_166
    sget-object v1, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v17

    goto/16 :goto_a2
.end method

.method private static startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    .registers 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3059
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiRssiIntentDelayTimerIfRequired: apn type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    if-nez p0, :cond_1c

    .line 3073
    :cond_1b
    :goto_1b
    return-void

    .line 3063
    :cond_1c
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v0, :cond_1b

    .line 3064
    invoke-static {p0}, isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, getIsWifiRssiInPollingZone()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3065
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3066
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_1b

    .line 3069
    :cond_4c
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private stopEpdgService()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1888
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopEpdgService"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    sget-boolean v1, mIsEpdgInitialized:Z

    if-eqz v1, :cond_4b

    .line 1890
    const-string v1, "[EPDGService]"

    const-string v2, "WifiCall is disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v1, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1892
    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, mWifiCallingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1896
    :goto_27
    sget-object v1, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1897
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 1900
    invoke-static {v3}, setIsOnDemandApnConnectionFailed(Z)V

    .line 1901
    invoke-static {}, isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1903
    :try_start_3e
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1904
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setRegistedNetworkStateChangeReceiver(Z)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_49} :catch_61

    .line 1909
    :cond_49
    :goto_49
    sput-boolean v3, mIsEpdgInitialized:Z

    .line 1912
    :cond_4b
    sget-boolean v1, mEnableEpdg:Z

    if-eqz v1, :cond_58

    .line 1914
    :try_start_4f
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_56} :catch_6b

    .line 1918
    :goto_56
    sput-boolean v3, mEnableEpdg:Z

    .line 1920
    :cond_58
    return-void

    .line 1894
    :cond_59
    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27

    .line 1905
    :catch_61
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mNetworkStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1915
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6b
    move-exception v0

    .line 1916
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private stopInternetKeepAlive()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4548
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setKeepAliveRunning(Z)V

    .line 4550
    iget-object v1, p0, mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_24

    .line 4551
    sget-object v1, mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4553
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4554
    iput-object v3, p0, mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4555
    iput-object v3, p0, mInternetIntfName:Ljava/lang/String;

    .line 4557
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_24
    return-void
.end method

.method private stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .registers 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3121
    const/4 v3, 0x0

    .line 3122
    .local v3, "retVal":Z
    if-nez p1, :cond_1e

    .line 3123
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3144
    .end local v3    # "retVal":Z
    .local v4, "retVal":I
    :goto_1d
    return v4

    .line 3126
    .end local v4    # "retVal":I
    .restart local v3    # "retVal":Z
    :cond_1e
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v6

    if-nez v6, :cond_7b

    .line 3127
    invoke-static {p1}, isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 3128
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_32
    if-ge v1, v2, :cond_54

    aget-object v5, v0, v1

    .line 3129
    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 3130
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: removing periodic dpd intent"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 3133
    const/4 v3, 0x1

    .line 3143
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_54
    :goto_54
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3144
    .restart local v4    # "retVal":I
    goto :goto_1d

    .line 3128
    .end local v4    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 3138
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_72
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 3141
    :cond_7b
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method private static stopWifiRssiIntentDelayTimerIfRequired()V
    .registers 2

    .prologue
    .line 3076
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v0, :cond_1d

    .line 3077
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3078
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer is running, stop it!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    sget-object v0, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3086
    :cond_1d
    :goto_1d
    return-void

    .line 3082
    :cond_1e
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private updateCpEpdgHoThreshold(Z)V
    .registers 11
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4683
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v2

    .line 4684
    .local v2, "threshold4gRoveIn":I
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    .line 4685
    .local v3, "threshold4gRoveOut":I
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v4

    .line 4686
    .local v4, "threshold3gRoveIn":I
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v5

    .line 4687
    .local v5, "threshold3gRoveOut":I
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v6

    .line 4688
    .local v6, "threshold2gRoveIn":I
    sget-object v0, mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v7

    .line 4690
    .local v7, "threshold2gRoveOut":I
    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    if-eqz v4, :cond_49

    if-eqz v5, :cond_49

    if-eqz v6, :cond_49

    if-nez v7, :cond_51

    .line 4693
    :cond_49
    const-string v0, "[EPDGService]"

    const-string v1, "Can not use CP threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4711
    :cond_50
    :goto_50
    return-void

    .line 4697
    :cond_51
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    const-string/jumbo v8, "ims"

    invoke-virtual {v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 4698
    const-string v0, "[EPDGService]"

    const-string v1, "Cellular preferred mode set threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    iget-boolean v0, p0, isCpThresholdTurnOn:Z

    if-eq v0, p1, :cond_50

    .line 4700
    iget-object v0, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4702
    iput-boolean p1, p0, isCpThresholdTurnOn:Z

    goto :goto_50

    .line 4705
    :cond_72
    iget-boolean v0, p0, isCpThresholdTurnOn:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_50

    .line 4706
    iget-object v0, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4708
    iput-boolean v1, p0, isCpThresholdTurnOn:Z

    goto :goto_50
.end method

.method private updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .registers 11
    .param p1, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 5811
    if-nez p1, :cond_b

    .line 5812
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "prefered Order is NULL"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5829
    :goto_a
    return-void

    .line 5816
    :cond_b
    invoke-static {}, getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 5817
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5818
    .local v2, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5819
    .local v5, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 5820
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 5821
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .line 5822
    .local v1, "apn":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 5823
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 5826
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 5827
    .local v3, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto :goto_a
.end method


# virtual methods
.method public bootCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1057
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    sget-boolean v0, mEnableEpdg:Z

    if-nez v0, :cond_38

    .line 1061
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG is not ready yet."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_37
    :goto_37
    return-void

    .line 1065
    :cond_38
    sget-object v0, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_4a

    sget-boolean v0, bIsSimReady:Z

    if-eq v0, v3, :cond_54

    :cond_4a
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_37

    sget-boolean v0, bIsSim2Ready:Z

    if-ne v0, v3, :cond_37

    .line 1068
    :cond_54
    sget-object v0, mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1069
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_37
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 10
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 3827
    const/4 v2, -0x1

    .line 3828
    .local v2, "profileId":I
    sget-object v3, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3829
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3830
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 3831
    if-ne v2, v6, :cond_6b

    .line 3832
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_6b

    .line 3834
    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d0

    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 3836
    add-int/lit8 v2, v0, 0x1

    .line 3837
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    .end local v0    # "i":I
    :cond_6b
    if-ne v2, v6, :cond_9f

    iget-object v3, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_9f

    .line 3844
    invoke-static {}, getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 3845
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    :cond_9f
    if-eq v2, v6, :cond_ce

    .line 3849
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3850
    invoke-static {p1}, getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3851
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3855
    :cond_ce
    const/4 v3, 0x0

    return v3

    .line 3833
    .restart local v0    # "i":I
    :cond_d0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2b
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 11
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3861
    const/4 v2, -0x1

    .line 3862
    .local v2, "profileId":I
    sget-object v3, mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3863
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3864
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 3865
    if-ne v2, v6, :cond_6e

    .line 3866
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_6e

    .line 3868
    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a3

    sget-object v3, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 3870
    add-int/lit8 v2, v0, 0x1

    .line 3871
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    .end local v0    # "i":I
    :cond_6e
    if-eq v2, v6, :cond_a6

    .line 3878
    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3879
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3886
    :goto_a1
    const/4 v3, 0x0

    return v3

    .line 3867
    .restart local v0    # "i":I
    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 3883
    .end local v0    # "i":I
    :cond_a6
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 441
    sget-object v6, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    :goto_32
    return-void

    .line 449
    :cond_33
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    sget-object v0, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_43
    if-ge v4, v5, :cond_53

    aget-object v3, v0, v4

    .line 452
    .local v3, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v3, :cond_50

    .line 453
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 457
    .end local v3    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_53
    :try_start_53
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    .line 458
    .local v1, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_5e} :catch_148

    .line 462
    .end local v1    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    :goto_5e
    sget-object v6, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_6b

    .line 463
    sget-object v6, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    :cond_6b
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 466
    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_150

    const-string v6, "UNSUCCESSFUL"

    :goto_83
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDG Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, mEnableEpdg:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    sget-object v6, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v6, :cond_ee

    .line 471
    sget-object v6, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    if-eqz v6, :cond_d2

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Volte is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VoWifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    :cond_d2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    :cond_ee
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v6, :cond_115

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vowifi MDN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vowifi_mdn"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    :cond_115
    sget-object v6, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v6, :cond_135

    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi Timers :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    :cond_135
    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 486
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 459
    :catch_148
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 467
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_150
    const-string v6, "SUCCESSFUL"

    goto/16 :goto_83
.end method

.method public enableTestRilAdapter(Z)I
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3892
    if-eqz p1, :cond_13

    .line 3893
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 3899
    :goto_11
    const/4 v0, 0x0

    return v0

    .line 3896
    :cond_13
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_11
.end method

.method public isDuringHandoverForIMS()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3904
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    .line 3905
    .local v1, "cid":I
    if-gez v1, :cond_13

    .line 3906
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    :cond_12
    :goto_12
    return v2

    .line 3909
    :cond_13
    sget-boolean v4, mIsEpdgInitialized:Z

    if-nez v4, :cond_1f

    .line 3910
    const-string v3, "[EPDGService]"

    const-string v4, "EpdgService not initialized."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 3914
    :cond_1f
    sget-object v4, mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    .line 3915
    .local v0, "apnState":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    if-eq v0, v3, :cond_61

    const/4 v4, 0x2

    if-eq v0, v4, :cond_61

    const/4 v4, 0x6

    if-eq v0, v4, :cond_61

    const/4 v4, 0x7

    if-eq v0, v4, :cond_61

    const/4 v4, 0x4

    if-eq v0, v4, :cond_61

    const/4 v4, 0x5

    if-ne v0, v4, :cond_12

    :cond_61
    move v2, v3

    .line 3923
    goto :goto_12
.end method

.method public makeEpdgServiceUp()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1075
    sget-object v6, mContext:Landroid/content/Context;

    .line 1076
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1077
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1078
    iget-object v0, p0, mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1082
    :cond_28
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v1, mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1083
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1085
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1087
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v2, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1090
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v2, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1093
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_6c

    .line 1094
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v2, p0, mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1099
    :cond_6c
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1100
    iget-object v0, p0, mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1103
    :cond_82
    iget-object v0, p0, mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1106
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1107
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const/16 v0, -0x64

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1109
    iget-object v0, p0, mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3795
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3797
    const/4 v0, 0x0

    return v0
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .registers 17
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3744
    sget-object v0, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_e

    .line 3745
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startForceToHandOverToEPDG : mSmartWifiAdapter is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    const/4 v0, -0x1

    .line 3758
    :goto_d
    return v0

    .line 3748
    :cond_e
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForceToHandOverToEPDG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    if-eqz p1, :cond_4c

    const/4 v8, 0x1

    .line 3750
    .local v8, "wificallenable":I
    :goto_2a
    const/4 v9, -0x1

    .line 3751
    .local v9, "wificallpreferred":I
    if-eqz p1, :cond_4e

    .line 3752
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3753
    sget-object v10, mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3758
    :goto_4a
    const/4 v0, 0x0

    goto :goto_d

    .line 3749
    .end local v8    # "wificallenable":I
    .end local v9    # "wificallpreferred":I
    :cond_4c
    const/4 v8, 0x0

    goto :goto_2a

    .line 3755
    .restart local v8    # "wificallenable":I
    .restart local v9    # "wificallpreferred":I
    :cond_4e
    sget-object v10, mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3756
    sget-object v0, mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3778
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 3786
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 3789
    invoke-direct {p0, p1}, startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3764
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 3769
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 3772
    invoke-direct {p0, p1}, startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
