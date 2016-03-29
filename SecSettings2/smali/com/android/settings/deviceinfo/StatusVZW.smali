.class public Lcom/android/settings/deviceinfo/StatusVZW;
.super Lcom/android/settings/InstrumentedPreferenceActivity;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryLife:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mFirstCall:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneHandler:Landroid/os/Handler;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "user_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 232
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;-><init>()V

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    .line 185
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    .line 186
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    .line 187
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    .line 188
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    .line 189
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    .line 190
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    .line 191
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    .line 196
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 278
    iput v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    .line 333
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$1;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$2;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$4;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW$5;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$6;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$7;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$7;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 1506
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$10;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$10;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1561
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW$11;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    .line 1840
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$12;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$12;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 1904
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$13;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusVZW$13;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StatusVZW;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    return-void
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()[B
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object v0
.end method

.method static synthetic access$1402([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 139
    sput-object p0, Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/StatusVZW;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1784(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/deviceinfo/StatusVZW;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateRegistrationStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getOemData()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mFirstCall:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StatusVZW;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusVZW;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0e1360

    const/4 v8, -0x1

    .line 1457
    const-string v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1458
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 1459
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1460
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1462
    .local v4, "ut":J
    iget v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_0

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 1463
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1474
    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1475
    return-void

    .line 1465
    :cond_0
    iget v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1466
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1467
    :cond_1
    iget v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_2

    .line 1468
    const v6, 0x7f0e1361

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1470
    :cond_2
    const v6, 0x7f0e135f

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1835
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1837
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 1498
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 1499
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1500
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 1502
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1958
    .local v1, "convertedStr":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1959
    .local v0, "charArray":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1961
    .local v3, "strLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    .line 1962
    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1963
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    .line 1964
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1967
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "devID"    # Ljava/lang/String;

    .prologue
    .line 1592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1593
    .local v0, "len":I
    const/4 v1, 0x0

    .line 1596
    .local v1, "out":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1602
    :cond_0
    :goto_0
    return-object v1

    .line 1598
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1599
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "esnno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 1612
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1613
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .local v0, "decESN":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1625
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1650
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1618
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1621
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1629
    :pswitch_2
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1632
    :pswitch_3
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1635
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1638
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1641
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1644
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1647
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1627
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "meidno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 1660
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1662
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1664
    .local v0, "decMEID":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1694
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1719
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1666
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1669
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1672
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1675
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1678
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1681
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1684
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1687
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1690
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1698
    :pswitch_9
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1701
    :pswitch_a
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1704
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1707
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1710
    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1713
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1716
    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1696
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getBatteryLife()I
    .locals 7

    .prologue
    .line 1076
    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    .line 1078
    .local v0, "BATTER_LIFE_SYSFS_PATH":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1079
    .local v1, "battery_life":I
    const/4 v2, 0x0

    .line 1082
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1087
    if-eqz v3, :cond_0

    .line 1088
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 1093
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v1

    .line 1090
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 1092
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1084
    :catch_1
    move-exception v4

    .line 1087
    :goto_1
    if-eqz v2, :cond_1

    .line 1088
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1090
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v4

    .line 1087
    :goto_2
    if-eqz v2, :cond_2

    .line 1088
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1091
    :cond_2
    :goto_3
    throw v4

    .line 1090
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1086
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1084
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1945
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1946
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, "imei":Ljava/lang/String;
    const-string v2, "USC"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAR"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    .line 1948
    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1952
    :cond_1
    :goto_0
    return-object v0

    .line 1949
    :cond_2
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1950
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1935
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1936
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1937
    .local v0, "iccId":Ljava/lang/String;
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1938
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    :cond_0
    return-object v0
.end method

.method private getMeidNumber(I)Ljava/lang/String;
    .locals 7
    .param p1, "selectSim"    # I

    .prologue
    .line 1115
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, p1

    .line 1116
    .local v3, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 1117
    .local v2, "meidNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1119
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "devId":Ljava/lang/String;
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMeidNumber() => devId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-nez v0, :cond_1

    .line 1122
    const-string v2, ""

    .line 1133
    .end local v0    # "devId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1124
    .restart local v0    # "devId":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v1, "meid":Ljava/lang/StringBuilder;
    const-string v4, "Dec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nHex:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_MEID_NUMBER() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1130
    .end local v0    # "devId":Ljava/lang/String;
    .end local v1    # "meid":Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1131
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 465
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 466
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 470
    .local v3, "fileSize":I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 471
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 472
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 473
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/StatusVZW;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 478
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 480
    :catch_2
    move-exception v2

    .line 481
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 478
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 482
    :goto_1
    throw v4

    .line 480
    :catch_3
    move-exception v2

    .line 481
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1138
    iget v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "opName":Ljava/lang/String;
    const-string v1, "DCM"

    sget-object v2, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 1155
    :cond_0
    :goto_0
    return-object v0

    .line 1141
    :cond_1
    const-string v1, "KDI"

    sget-object v2, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    const-string v0, "au"

    goto :goto_0

    .line 1143
    :cond_2
    const-string v1, "TGY"

    sget-object v2, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    :cond_3
    const-string v1, "China Telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1145
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1146
    :cond_4
    const-string v1, "CU GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHN-CUGSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "China Unicom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHN-UNICOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1148
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1149
    :cond_6
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "CHINA MOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1150
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1364

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_8
    const-string v1, "PCCW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "PCCW-HKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    :cond_9
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 362
    new-instance v0, Lcom/android/settings/deviceinfo/StatusVZW$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/settings/deviceinfo/StatusVZW$3;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;II)V

    .line 388
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1097
    packed-switch p1, :pswitch_data_0

    .line 1109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1099
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1103
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1106
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1854
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1856
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1871
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1866
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 487
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 488
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 489
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1490
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1491
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerForWfcRegistrationStatus(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    .line 1547
    const-string v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForWfcRegistrationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    if-eqz p1, :cond_0

    .line 1551
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateRegistrationStatus()V

    .line 1552
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1558
    :goto_0
    return-void

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1046
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1049
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 1431
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1432
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1436
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1441
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1438
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setFirstCallstatus()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    .line 1881
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1882
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1883
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 1886
    .local v3, "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    const/4 v4, 0x4

    .line 1887
    .local v4, "size":I
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1888
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1889
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1900
    :goto_0
    new-instance v3, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .end local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-direct {v3, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    .line 1901
    .restart local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1902
    return-void

    .line 1895
    :catch_0
    move-exception v2

    .line 1896
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1890
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1891
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1894
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1895
    :catch_2
    move-exception v2

    .line 1896
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1893
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1894
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1897
    :goto_1
    throw v5

    .line 1895
    :catch_3
    move-exception v2

    .line 1896
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "Status"

    const-string v7, "IOException in getOemData!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 1422
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1428
    :goto_0
    return-void

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    .line 439
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 443
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 444
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 445
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 447
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    if-eqz v1, :cond_0

    .line 453
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 461
    return-void

    .line 455
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 449
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    if-eqz v1, :cond_0

    .line 453
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 455
    :catch_2
    move-exception v2

    .line 456
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 452
    if-eqz v1, :cond_1

    .line 453
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 457
    :cond_1
    :goto_1
    throw v4

    .line 455
    :catch_3
    move-exception v2

    .line 456
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1066
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1070
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1073
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 1452
    const-string v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1453
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0e1361

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1454
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 1379
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1380
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1381
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1382
    return-void

    .line 1380
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1373
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1376
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 1275
    if-eqz p1, :cond_0

    .line 1276
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    const v5, 0x7f0e00e0

    .line 1222
    iget v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1223
    .local v2, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v1

    .line 1225
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1242
    :goto_0
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->hasService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1243
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    :cond_0
    const-string v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void

    .line 1229
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1230
    goto :goto_0

    .line 1232
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1233
    goto :goto_0

    .line 1235
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e00df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    goto :goto_0

    .line 1238
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e00de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 1159
    const-string v2, "gsm.network.type"

    iget v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "networkType":Ljava/lang/String;
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType() => networkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1165
    const-string v2, "gsm.voice.network.type"

    iget v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "voiceNetworkType":Ljava/lang/String;
    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1169
    move-object v0, v1

    .line 1170
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_0
    const-string v2, "CDMA-IS95A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CDMA-IS95B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1173
    :cond_1
    const-string v0, "CDMA 1x"

    .line 1213
    .end local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType() => networkType name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1218
    :cond_3
    const-string v2, "network_type"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void

    .line 1174
    .restart local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_4
    const-string v2, "EvDo-rev.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1175
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1176
    :cond_5
    const-string v2, "EvDo-rev.A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1177
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1178
    :cond_6
    const-string v2, "EvDo-rev.B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1179
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1180
    :cond_7
    const-string v2, "1xRTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1181
    const-string v0, "CDMA 1x"

    goto :goto_0

    .line 1182
    :cond_8
    const-string v2, "UMTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1183
    const-string v0, "WCDMA"

    goto :goto_0

    .line 1184
    :cond_9
    const-string v2, "HSDPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "HSUPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "HSPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1185
    :cond_a
    const-string v0, "HSPA"

    goto :goto_0

    .line 1186
    :cond_b
    const-string v2, "HSPAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1187
    const-string v0, "HSPA+"

    goto/16 :goto_0

    .line 1188
    :cond_c
    const-string v2, "eHRPD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1189
    const-string v0, "eHRPD"

    goto/16 :goto_0

    .line 1190
    :cond_d
    const-string v2, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1191
    const-string v0, "LTE"

    goto/16 :goto_0

    .line 1192
    :cond_e
    const-string v2, "GPRS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EDGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1193
    const-string v2, "TD-SCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1194
    const-string v0, "TD-SCDMA"

    goto/16 :goto_0

    .line 1196
    :cond_f
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    goto/16 :goto_0

    .line 1199
    .end local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_10
    iget v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1204
    const-string v2, "false"

    const-string v3, "ro.ril.svlte1x"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDataState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1207
    const-string v0, "1x RTT"

    goto/16 :goto_0

    .line 1209
    :cond_11
    const-string v2, "OMN"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "O2U"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "XEC"

    sget-object v3, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    :cond_12
    const-string v2, "LTE"

    const-string v3, "4G"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateRegistrationStatus()V
    .locals 2

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    .line 1580
    .local v0, "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_0

    .line 1584
    :cond_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v5, 0x7f0e00da

    const v4, 0x7f0e00d9

    .line 1250
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1251
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "display":Ljava/lang/String;
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1256
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1258
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_0
    :goto_0
    const-string v2, "operator_name"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusVZW;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    return-void

    .line 1260
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1265
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1267
    :cond_3
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStatus(I)V
    .locals 31
    .param p1, "selectSim"    # I

    .prologue
    .line 713
    const/16 v23, 0x0

    .line 714
    .local v23, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v15, 0x0

    .line 716
    .local v15, "manager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 717
    :cond_0
    sget-object v4, Lcom/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v11, :cond_18

    aget-object v10, v4, v8

    .line 718
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 717
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 721
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    aget-object v23, v28, p1

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v28, v0

    aget-object v15, v28, p1

    .line 726
    const-string v28, "CDMA"

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v28

    if-nez v28, :cond_2

    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 728
    :cond_2
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 729
    :cond_3
    const-string v28, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 739
    :goto_1
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "CDMA"

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 740
    const-string v28, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 741
    const-string v28, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 744
    :cond_4
    const-string v28, "min_number"

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f100022

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 747
    const-string v28, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    const v29, 0x7f0e0680

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setTitle(I)V

    .line 749
    :cond_5
    const-string v28, "prl_version"

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v28, "imei"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getIMEI(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "TFN"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 753
    :cond_6
    const-string v29, "imei_sv"

    const-string v28, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 759
    const-string v28, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 760
    const-string v28, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 763
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v28

    if-nez v28, :cond_8

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 767
    :cond_8
    const-string v28, "icc_id"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getIccId(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    .line 776
    .local v6, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v6, :cond_9

    .line 777
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v26

    .line 778
    .local v26, "sid":I
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v17

    .line 779
    .local v17, "nid":I
    const-string v29, "sid_number"

    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v28, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v29, "nid_number"

    const/16 v28, -0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v28, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v17    # "nid":I
    .end local v26    # "sid":I
    :cond_9
    :goto_6
    const-string v28, "SPR"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->connectToRilService()V

    .line 808
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 809
    const-string v28, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 810
    .local v12, "mIMEI":Landroid/preference/Preference;
    if-eqz v12, :cond_a

    .line 811
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 812
    new-instance v28, Lcom/android/settings/deviceinfo/StatusVZW$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW$9;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 824
    .end local v12    # "mIMEI":Landroid/preference/Preference;
    :cond_a
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v19

    .line 825
    .local v19, "rawNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 827
    .local v7, "formattedNumber":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 828
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 829
    const-string v28, "\\+82"

    const-string v29, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 832
    :cond_b
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 835
    :cond_c
    const-string v28, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 840
    const/16 v27, 0x0

    .local v27, "simSlotNum":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v29

    aput-object v29, v28, v27

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    const/16 v29, 0x141

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 840
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 731
    .end local v7    # "formattedNumber":Ljava/lang/String;
    .end local v19    # "rawNumber":Ljava/lang/String;
    .end local v27    # "simSlotNum":I
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/StatusVZW;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 732
    .local v16, "meidNumber":Ljava/lang/String;
    if-nez v16, :cond_e

    .line 733
    const-string v28, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 735
    :cond_e
    const-string v28, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 755
    .end local v16    # "meidNumber":Ljava/lang/String;
    :cond_f
    const-string v28, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 771
    :cond_10
    const-string v28, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 779
    .restart local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v17    # "nid":I
    .restart local v26    # "sid":I
    :cond_11
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_4

    .line 780
    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_5

    .line 783
    .end local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v17    # "nid":I
    .end local v26    # "sid":I
    :cond_13
    const-string v28, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 784
    const-string v28, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 790
    :cond_14
    const-string v28, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 793
    :cond_15
    const-string v28, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    aget-object v29, v29, p1

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v29, "imei_sv"

    const-string v28, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v28, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 799
    const-string v28, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 800
    const-string v28, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 801
    const-string v28, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 802
    const-string v28, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 803
    const-string v28, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 804
    const-string v28, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 849
    .restart local v7    # "formattedNumber":Ljava/lang/String;
    .restart local v19    # "rawNumber":Ljava/lang/String;
    .restart local v27    # "simSlotNum":I
    :cond_16
    const-string v28, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 850
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    .line 852
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    move/from16 v28, v0

    if-nez v28, :cond_18

    .line 853
    const-string v28, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 860
    .end local v7    # "formattedNumber":Ljava/lang/String;
    .end local v19    # "rawNumber":Ljava/lang/String;
    .end local v27    # "simSlotNum":I
    :cond_18
    const-string v28, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setSysScopeStatus()V

    .line 867
    const-string v28, "ril.serialnumber"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 868
    .local v14, "mRilSerial":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_19

    const-string v28, "00000000000"

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    :cond_19
    const-string v24, "ro.serialno"

    .line 869
    .local v24, "serial":Ljava/lang/String;
    :goto_9
    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 870
    .local v25, "serialNum":Ljava/lang/String;
    const-string v28, "Status"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "serial:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v28, "Status"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "serialNum:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "KDI"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "USC"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "MTR"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "LRA"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "ACG"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 875
    :cond_1a
    const-string v28, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 881
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 882
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v28

    const-string v29, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 883
    .local v18, "ratedValue":Ljava/lang/String;
    const-string v28, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 884
    const-string v28, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 885
    const-string v28, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 887
    const-string v28, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 888
    const-string v28, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 889
    const-string v28, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v28

    if-nez v28, :cond_1b

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 891
    const-string v28, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 895
    .end local v18    # "ratedValue":Ljava/lang/String;
    :cond_1b
    const-string v28, "DCM"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 896
    const-string v28, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 897
    const-string v28, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 900
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 902
    const-string v28, "ril.eri_ver_1"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "ERI_SysProp":Ljava/lang/String;
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_21

    .line 905
    const-string v28, "eri_version"

    const/16 v29, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :goto_b
    const/4 v13, 0x0

    .line 914
    .local v13, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const/16 v28, 0x7

    move/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    check-cast v13, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 915
    .restart local v13    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const-string v22, "0"

    .line 916
    .local v22, "retVal":Ljava/lang/String;
    if-eqz v13, :cond_1d

    .line 917
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v28, 0x0

    const/16 v29, 0x6d

    aput v29, v20, v28

    .line 918
    .local v20, "reqFields":[I
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v21

    .line 919
    .local v21, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v21, :cond_1d

    .line 920
    const/16 v28, 0x6d

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "retVal":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .line 922
    .end local v20    # "reqFields":[I
    .end local v21    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v22    # "retVal":Ljava/lang/String;
    :cond_1d
    const-string v28, "1"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_27

    .line 923
    if-eqz v13, :cond_23

    invoke-interface {v13}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v28

    if-eqz v28, :cond_23

    const/4 v5, 0x1

    .line 924
    .local v5, "bImsRegistered":Z
    :goto_c
    const/4 v9, 0x0

    .line 925
    .local v9, "imsSummaryStrId":I
    const-string v28, "VZW"

    sget-object v29, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 926
    if-eqz v5, :cond_24

    const v9, 0x7f0e0317

    .line 930
    :goto_d
    const-string v28, "ims_reg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .end local v5    # "bImsRegistered":Z
    .end local v9    # "imsSummaryStrId":I
    :goto_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 936
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v28

    if-nez v28, :cond_1e

    .line 937
    const-string v28, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 941
    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v28

    if-eqz v28, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 942
    const-string v28, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mFirstCall:Landroid/preference/Preference;

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setFirstCallstatus()V

    .line 947
    :goto_f
    return-void

    .line 868
    .end local v13    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .end local v22    # "retVal":Ljava/lang/String;
    .end local v24    # "serial":Ljava/lang/String;
    .end local v25    # "serialNum":Ljava/lang/String;
    :cond_1f
    const-string v24, "ril.serialnumber"

    goto/16 :goto_9

    .line 877
    .restart local v24    # "serial":Ljava/lang/String;
    .restart local v25    # "serialNum":Ljava/lang/String;
    :cond_20
    const-string v28, "Status"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "serialNum : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v28, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 907
    .restart local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_21
    const-string v28, "eri_version"

    const-string v29, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 910
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_22
    const-string v28, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 923
    .restart local v13    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .restart local v22    # "retVal":Ljava/lang/String;
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 926
    .restart local v5    # "bImsRegistered":Z
    .restart local v9    # "imsSummaryStrId":I
    :cond_24
    const v9, 0x7f0e0318

    goto/16 :goto_d

    .line 928
    :cond_25
    if-eqz v5, :cond_26

    const v9, 0x7f0e1366

    :goto_10
    goto/16 :goto_d

    :cond_26
    const v9, 0x7f0e1367

    goto :goto_10

    .line 932
    .end local v5    # "bImsRegistered":Z
    .end local v9    # "imsSummaryStrId":I
    :cond_27
    const-string v28, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 945
    :cond_28
    const-string v28, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 709
    const/16 v0, 0x2c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 546
    invoke-super/range {p0 .. p1}, Lcom/android/settings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 549
    .local v13, "intent":Landroid/content/Intent;
    const-string v22, "sim Id"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 550
    const-string v22, "sim Id"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 551
    const-string v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mActivePhone : ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    new-instance v22, Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    .line 554
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 557
    const/16 v20, 0x0

    .local v20, "simSlotNum":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    const-string v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    aput-object v22, v23, v20

    .line 557
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 561
    :cond_1
    const-string v22, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    .line 562
    const-string v22, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 564
    const v22, 0x7f08003d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->addPreferencesFromResource(I)V

    .line 565
    const-string v22, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    .line 566
    const-string v22, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    .line 567
    const-string v22, "battery_life"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLife:Landroid/preference/Preference;

    .line 568
    const-string v22, "bt_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 569
    const-string v22, "wifi_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    .line 570
    const-string v22, "wimax_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 571
    const-string v22, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0e00be

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0e068e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    .line 577
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getBatteryLife()I

    move-result v6

    .line 581
    .local v6, "battery_life":I
    const-string v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "battery life : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-lez v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v22

    if-nez v22, :cond_4

    .line 583
    :cond_2
    const-string v22, "battery_life"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 595
    :goto_1
    const-string v22, "VZW"

    sget-object v23, Lcom/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 596
    new-instance v18, Ljava/io/File;

    const-string v22, "/efs/sec_efs/LastResetDate.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v18, "resetFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 599
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 600
    const/4 v11, 0x0

    .line 603
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/FileReader;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 606
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v12, "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 607
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 608
    .local v7, "calendar":Ljava/util/Calendar;
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v22, "MM/dd/yyyy HH:mm:ss"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    .local v19, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    :goto_3
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v22

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 617
    .local v8, "date_string":Ljava/lang/String;
    const-string v22, "factorydatareset"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 619
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "date_string":Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 621
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 623
    if-eqz v11, :cond_3

    .line 625
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 636
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v18    # "resetFile":Ljava/io/File;
    :cond_3
    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 638
    const/16 v20, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    aput-object v23, v22, v20

    .line 638
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 585
    :cond_4
    const/16 v22, 0x50

    move/from16 v0, v22

    if-lt v6, v0, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLife:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0e154a

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 587
    :cond_5
    const/16 v22, 0x32

    move/from16 v0, v22

    if-lt v6, v0, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLife:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0e154b

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 590
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryLife:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0e154c

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 611
    .restart local v7    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "resetFile":Ljava/io/File;
    .restart local v19    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v9

    .line 613
    .local v9, "e":Ljava/text/ParseException;
    :try_start_6
    invoke-virtual {v9}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 623
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v9    # "e":Ljava/text/ParseException;
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v22

    move-object v11, v12

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :goto_7
    if-eqz v11, :cond_7

    .line 625
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 627
    :cond_7
    :goto_8
    throw v22

    .line 623
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_8
    if-eqz v12, :cond_3

    .line 625
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    .line 626
    :catch_2
    move-exception v22

    goto/16 :goto_5

    .line 632
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resetFile":Ljava/io/File;
    :cond_9
    const-string v22, "factorydatareset"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 643
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 644
    const/16 v20, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    move-object/from16 v22, v0

    const-string v23, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    aput-object v23, v22, v20

    .line 644
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 648
    :cond_b
    const-string v22, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    .line 649
    const-string v22, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->hasBluetooth()Z

    move-result v22

    if-nez v22, :cond_c

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 654
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 657
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->hasWimax()Z

    move-result v22

    if-nez v22, :cond_d

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 659
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 662
    :cond_d
    new-instance v22, Landroid/content/IntentFilter;

    invoke-direct/range {v22 .. v22}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 663
    sget-object v5, Lcom/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_a
    if-ge v10, v14, :cond_e

    aget-object v21, v5, v10

    .line 664
    .local v21, "sintent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 667
    .end local v21    # "sintent":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v22

    new-instance v23, Lcom/android/settings/deviceinfo/StatusVZW$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StatusVZW$8;-><init>(Lcom/android/settings/deviceinfo/StatusVZW;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 691
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 692
    const-string v22, "Status"

    const-string v23, "in Status.java isTablet onCreate()"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v17, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .local v17, "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c00cb

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c00cd

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 695
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 696
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 699
    .local v16, "listview":Landroid/widget/ListView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 701
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->invalidate()V

    .line 705
    .end local v16    # "listview":Landroid/widget/ListView;
    .end local v17    # "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_f
    return-void

    .line 626
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "resetFile":Ljava/io/File;
    :catch_3
    move-exception v22

    goto/16 :goto_5

    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v23

    goto/16 :goto_8

    .line 623
    :catchall_1
    move-exception v22

    goto/16 :goto_7

    .line 619
    :catch_5
    move-exception v9

    goto/16 :goto_4
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->finish()V

    .line 1877
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1001
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onPause()V

    .line 1003
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 1006
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 1008
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1011
    :cond_0
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_0
    iget v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 1012
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "simSlotNum":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_2

    .line 1017
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1019
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1020
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1026
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1027
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 1029
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1032
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 951
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onResume()V

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 954
    iget v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    .line 956
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 958
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 959
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 960
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-nez v1, :cond_0

    .line 961
    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 962
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 963
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 966
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/android/settings/deviceinfo/StatusVZW;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 975
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/android/settings/deviceinfo/StatusVZW;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 977
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 979
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 980
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    .line 988
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 992
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 996
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 997
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setWimaxStatus()V

    .line 1445
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setWifiStatus()V

    .line 1446
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setBtStatus()V

    .line 1447
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->setIpAddressStatus()V

    .line 1448
    return-void
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "activePhone"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1286
    const/4 v1, 0x0

    .line 1287
    .local v1, "preferenceStrength":Landroid/preference/Preference;
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSignalStrength() slotId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / activePhone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*** "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v6, v6, [Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 1290
    const/4 v5, 0x0

    .local v5, "simSlotNum":I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v5, v6, :cond_1

    .line 1291
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    aput-object v7, v6, v5

    .line 1292
    if-ne p2, v5, :cond_0

    .line 1293
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v6, v5

    .line 1290
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1297
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1298
    if-eqz v1, :cond_2

    .line 1299
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1301
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    .line 1302
    .local v4, "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v3

    .line 1304
    .local v3, "signalAsu":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e00e5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e00e6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1357
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "signalAsu":I
    .end local v4    # "signalDbm":I
    :cond_2
    :goto_1
    return-void

    .line 1310
    :cond_3
    if-eqz v1, :cond_2

    .line 1312
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    if-eqz v6, :cond_4

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->updateSignalStrengthToZeroWhenIMSRegistered()V

    goto :goto_1

    .line 1319
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1327
    .restart local v2    # "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v4

    .line 1328
    .restart local v4    # "signalDbm":I
    const/4 v6, -0x1

    if-ne v6, v4, :cond_5

    const/4 v4, 0x0

    .line 1330
    :cond_5
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v3

    .line 1331
    .restart local v3    # "signalAsu":I
    const-string v6, "Combination"

    const-string v7, "Strawberry"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1333
    const/4 v6, -0x1

    if-eq v6, v3, :cond_6

    const/16 v6, 0x63

    if-eq v6, v3, :cond_6

    const/16 v6, 0xff

    if-ne v6, v3, :cond_7

    .line 1334
    :cond_6
    const/16 v4, -0x71

    .line 1335
    const/4 v3, 0x0

    .line 1346
    :cond_7
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e00e5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e00e6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1351
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Status] updateSignalStrength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0e00e5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0e00e6

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1338
    :cond_8
    const-string v6, "gsm.network.type"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v6, p2, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, "networkType":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v6, v3, :cond_9

    const/16 v6, 0x63

    if-eq v6, v3, :cond_9

    const/16 v6, 0xff

    if-eq v6, v3, :cond_9

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1341
    :cond_9
    const/16 v4, -0x71

    .line 1342
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1361
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1363
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e00e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e00e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1369
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 1480
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 1482
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1483
    const-wide/16 v2, 0x1

    .line 1486
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1487
    return-void
.end method
