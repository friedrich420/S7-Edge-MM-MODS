.class public Lcom/android/server/enterprise/device/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_MSG_RECEIVED:Ljava/lang/String; = "com.samsung.mms.RECEIVED_MSG"

.field private static final ACTION_MSG_SENT:Ljava/lang/String; = "com.samsung.mms.SENT_MSG"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final NOK:I = 0x1

.field private static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mRooting:I

.field private static mSignalStrength:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field mMessagingReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateReceiver:Ljava/lang/Object;

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mSignalStrength:Ljava/lang/String;

    .line 154
    const/4 v0, -0x1

    sput v0, mRooting:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 162
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 103
    iput-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    iput-object v8, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    iput-wide v6, p0, mLastUpdateWifiTx:J

    .line 113
    iput-wide v6, p0, mLastUpdateWifiRx:J

    .line 114
    iput-wide v6, p0, mLastUpdateMobileTx:J

    .line 115
    iput-wide v6, p0, mLastUpdateMobileRx:J

    .line 116
    iput-wide v6, p0, mStorageWifiTx:J

    .line 117
    iput-wide v6, p0, mStorageWifiRx:J

    .line 118
    iput-wide v6, p0, mStorageMobileTx:J

    .line 119
    iput-wide v6, p0, mStorageMobileRx:J

    .line 120
    iput v5, p0, mDataStatsCounter:I

    .line 121
    const/16 v4, 0xbb8

    iput v4, p0, mDataUsageTimer:I

    .line 122
    iput-boolean v5, p0, mDataUsageTimerActivated:Z

    .line 123
    iput-boolean v5, p0, mWifiStatsEnabled:Z

    .line 124
    iput-boolean v5, p0, mDataStatsEnabled:Z

    .line 125
    iput-boolean v5, p0, mDataLogEnabled:Z

    .line 126
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    .line 127
    iput-wide v6, p0, mDataCallLogLastTime:J

    .line 128
    const-string v4, ""

    iput-object v4, p0, mDataCallLogLastStatus:Ljava/lang/String;

    .line 129
    const-string v4, ""

    iput-object v4, p0, mDataCallLogLastNetType:Ljava/lang/String;

    .line 130
    iput-wide v6, p0, mDataCallLogLastValue:J

    .line 131
    iput-boolean v5, p0, mDataCallConnected:Z

    .line 138
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 200
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 785
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$4;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$4;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$5;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$5;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1125
    iput-object v8, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1585
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$6;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$6;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, mMessagingReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 164
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    .line 173
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/16 v7, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, mPhoneStateReceiver:Ljava/lang/Object;

    .line 179
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v3, "sysScopeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v2, "msgFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.mms.RECEIVED_MSG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v4, "com.samsung.mms.SENT_MSG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mMessagingReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    invoke-virtual {v4, v5, v2, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, "dataConnectionFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/device/DeviceInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 96
    sput p0, mRooting:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/device/DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget v0, p0, mDataUsageTimer:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, mDataCallLogLastTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, mDataCallLogLastValue:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/enterprise/device/DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-object v0, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-object v0, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/device/DeviceInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-boolean v0, p0, mDataUsageTimerActivated:Z

    return v0
.end method

.method private dataUsageValuesInit()V
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 811
    invoke-direct {p0}, dataUsageValuesUpdate()V

    .line 812
    invoke-direct {p0}, getStrictDataUsageTimer()I

    move-result v3

    .line 813
    .local v3, "i":I
    if-eqz v3, :cond_88

    .end local v3    # "i":I
    :goto_c
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, mDataUsageTimer:I

    .line 814
    invoke-virtual {p0, v8}, getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, mDataStatsEnabled:Z

    .line 815
    invoke-virtual {p0, v8}, getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, mDataLogEnabled:Z

    .line 816
    invoke-virtual {p0, v8}, getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, mWifiStatsEnabled:Z

    .line 817
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "deviceWifiSent"

    aput-object v6, v0, v9

    const/4 v6, 0x1

    const-string/jumbo v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string/jumbo v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .line 819
    .local v0, "columns":[Ljava/lang/String;
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v8, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 821
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_87

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_87

    .line 822
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 823
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_87

    .line 825
    :try_start_53
    const-string/jumbo v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, mStorageWifiTx:J

    .line 826
    const-string/jumbo v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, mStorageWifiRx:J

    .line 827
    const-string/jumbo v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, mStorageMobileTx:J

    .line 828
    const-string/jumbo v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, mStorageMobileRx:J
    :try_end_87
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_87} :catch_8a

    .line 835
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_87
    :goto_87
    return-void

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3    # "i":I
    :cond_88
    move v3, v5

    .line 813
    goto :goto_c

    .line 829
    .end local v3    # "i":I
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_8a
    move-exception v2

    .line 830
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string/jumbo v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0, v8}, resetDataUsage(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_87
.end method

.method private dataUsageValuesUpdate()V
    .registers 3

    .prologue
    .line 838
    invoke-direct {p0}, getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, mLastUpdateWifiTx:J

    .line 839
    invoke-direct {p0}, getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, mLastUpdateWifiRx:J

    .line 840
    invoke-direct {p0}, getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, mLastUpdateMobileTx:J

    .line 841
    invoke-direct {p0}, getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, mLastUpdateMobileRx:J

    .line 842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mDataCallLogLastTime:J

    .line 843
    return-void
.end method

.method private enforceDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1140
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1145
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePhone()V
    .registers 3

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_10

    .line 1151
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_10
    return-void
.end method

.method private enforcePhoneAppOrAdmin(Landroid/app/enterprise/ContextInfo;)V
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    .line 1157
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 1160
    :cond_11
    return-void
.end method

.method private enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    .line 1164
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1166
    :cond_b
    return-void
.end method

.method private getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callType"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 410
    iget-object v3, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_d

    .line 411
    const/4 v0, -0x1

    .line 424
    :goto_c
    return v0

    .line 414
    :cond_d
    const/4 v0, -0x1

    .line 415
    .local v0, "count":I
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 417
    const/4 v0, 0x0

    goto :goto_c

    .line 420
    :cond_18
    :try_start_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_c

    .line 421
    :catch_1d
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1128
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 1129
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1132
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .registers 6
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 595
    const/4 v1, -0x1

    .line 597
    .local v1, "value":I
    const/4 v2, -0x1

    :try_start_2
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 602
    :goto_6
    return v1

    .line 598
    :catch_7
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 600
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v1, "(?i:model)\\s*(?i:name).*:.*[a-zA-Z].*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "(?i:processor).*:.*[a-zA-Z].*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 470
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 471
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v0, "tokener":Ljava/util/StringTokenizer;
    :goto_1b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 474
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 477
    :cond_2a
    const-string v1, "^[0-9]+$"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    move-object v1, p1

    .line 481
    .end local v0    # "tokener":Ljava/util/StringTokenizer;
    :goto_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private getStrictDataUsageTimer()I
    .registers 8

    .prologue
    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "ret":I
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 742
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 743
    .local v2, "value":I
    if-eqz v1, :cond_24

    if-ge v2, v1, :cond_10

    .line 744
    :cond_24
    move v1, v2

    goto :goto_10

    .line 747
    .end local v2    # "value":I
    :cond_26
    if-nez v1, :cond_29

    .line 748
    const/4 v1, 0x3

    .line 750
    :cond_29
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "fromVM"    # Z

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, "value":Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 579
    :try_start_3
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    :goto_7
    return-object v1

    .line 581
    :cond_8
    const-string/jumbo v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1a

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x0

    :cond_19
    goto :goto_7

    .line 584
    :catch_1a
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 586
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getTrafficMobileRx()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 777
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 779
    .local v0, "mobileValue":J
    iget-wide v4, p0, mLastUpdateMobileRx:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_12

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 780
    iget-wide v0, p0, mLastUpdateMobileRx:J

    .line 782
    :cond_12
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-nez v4, :cond_19

    move-wide v0, v2

    .end local v0    # "mobileValue":J
    :cond_19
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 768
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 770
    .local v0, "mobileValue":J
    iget-wide v4, p0, mLastUpdateMobileTx:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_12

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 771
    iget-wide v0, p0, mLastUpdateMobileTx:J

    .line 773
    :cond_12
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-nez v4, :cond_19

    move-wide v0, v2

    .end local v0    # "mobileValue":J
    :cond_19
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 761
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 762
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 763
    .local v2, "totalValue":J
    cmp-long v6, v8, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_11
    cmp-long v6, v8, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 754
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 755
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 756
    .local v2, "totalValue":J
    cmp-long v6, v8, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_11
    cmp-long v6, v8, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_12

    .line 847
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 849
    :cond_12
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_17

    .line 854
    :goto_16
    return v0

    .line 852
    :cond_17
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    const/4 v0, 0x1

    .line 854
    .local v0, "ret":Z
    :cond_21
    goto :goto_16
.end method

.method private logDataCall(J)Z
    .registers 12
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1062
    iget-boolean v5, p0, mDataLogEnabled:Z

    if-nez v5, :cond_f

    .line 1063
    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :goto_e
    return v4

    .line 1066
    :cond_f
    iget-boolean v5, p0, mDataCallConnected:Z

    if-nez v5, :cond_1b

    .line 1067
    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1070
    :cond_1b
    cmp-long v5, p1, v6

    if-gtz v5, :cond_27

    .line 1071
    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1077
    :cond_27
    iget-object v5, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_34

    .line 1078
    const-string v5, "DeviceInfo"

    const-string/jumbo v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1082
    :cond_34
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1083
    const-string v3, "ROAMING"

    .line 1089
    .local v3, "status":Ljava/lang/String;
    :goto_3e
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "netType":Ljava/lang/String;
    iget-object v4, p0, mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 1095
    :cond_54
    iput-wide v6, p0, mDataCallLogLastTime:J

    .line 1096
    iput-wide v6, p0, mDataCallLogLastValue:J

    .line 1100
    :cond_58
    iput-object v3, p0, mDataCallLogLastStatus:Ljava/lang/String;

    .line 1101
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 1102
    iput-object v2, p0, mDataCallLogLastNetType:Ljava/lang/String;

    .line 1105
    :cond_64
    iget-wide v4, p0, mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, mDataCallLogLastValue:J

    .line 1108
    const/4 v1, 0x0

    .line 1109
    .local v1, "cvWhere":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1110
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "dataCallDate"

    iget-wide v6, p0, mDataCallLogLastTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1111
    const-string/jumbo v4, "dataCallStatus"

    iget-object v5, p0, mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string/jumbo v4, "dataCallNetType"

    iget-object v5, p0, mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, mDataCallLogLastTime:J

    .line 1116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    .local v0, "cvUpdate":Landroid/content/ContentValues;
    const-string/jumbo v4, "dataCallDate"

    iget-wide v6, p0, mDataCallLogLastTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    const-string/jumbo v4, "dataCallStatus"

    iget-object v5, p0, mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v4, "dataCallNetType"

    iget-object v5, p0, mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string/jumbo v4, "dataCallBytes"

    iget-wide v6, p0, mDataCallLogLastValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1121
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_e

    .line 1085
    .end local v0    # "cvUpdate":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "netType":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :cond_cc
    const-string v3, "NORMAL"

    .restart local v3    # "status":Ljava/lang/String;
    goto/16 :goto_3e
.end method

.method private updateDataStatisticsUsage()J
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 858
    const-wide/16 v8, 0x0

    .line 859
    .local v8, "wifiUsage":J
    const-wide/16 v4, 0x0

    .line 860
    .local v4, "mobileUsage":J
    const-wide/16 v2, 0x0

    .line 861
    .local v2, "delta":J
    const-wide/16 v6, 0x0

    .line 862
    .local v6, "valueNow":J
    iget v1, p0, mDataStatsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mDataStatsCounter:I

    .line 865
    invoke-direct {p0}, getTrafficWifiTx()J

    move-result-wide v6

    .line 866
    iget-wide v10, p0, mLastUpdateWifiTx:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_2d

    .line 867
    iget-wide v10, p0, mLastUpdateWifiTx:J

    sub-long v2, v6, v10

    .line 868
    invoke-direct {p0}, isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, mWifiStatsEnabled:Z

    if-eqz v1, :cond_2d

    .line 869
    iget-wide v10, p0, mStorageWifiTx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, mStorageWifiTx:J

    .line 872
    :cond_2d
    iput-wide v6, p0, mLastUpdateWifiTx:J

    .line 873
    add-long/2addr v8, v2

    .line 874
    const-wide/16 v2, 0x0

    .line 877
    invoke-direct {p0}, getTrafficWifiRx()J

    move-result-wide v6

    .line 878
    iget-wide v10, p0, mLastUpdateWifiRx:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_4f

    .line 879
    iget-wide v10, p0, mLastUpdateWifiRx:J

    sub-long v2, v6, v10

    .line 880
    invoke-direct {p0}, isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, mWifiStatsEnabled:Z

    if-eqz v1, :cond_4f

    .line 881
    iget-wide v10, p0, mStorageWifiRx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, mStorageWifiRx:J

    .line 884
    :cond_4f
    iput-wide v6, p0, mLastUpdateWifiRx:J

    .line 885
    add-long/2addr v8, v2

    .line 886
    const-wide/16 v2, 0x0

    .line 889
    invoke-direct {p0}, getTrafficMobileTx()J

    move-result-wide v6

    .line 890
    iget-wide v10, p0, mLastUpdateMobileTx:J

    cmp-long v1, v6, v10

    if-ltz v1, :cond_e6

    .line 891
    iget-wide v10, p0, mLastUpdateMobileTx:J

    sub-long v2, v6, v10

    .line 892
    iget-boolean v1, p0, mDataStatsEnabled:Z

    if-eqz v1, :cond_6b

    .line 893
    iget-wide v10, p0, mStorageMobileTx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, mStorageMobileTx:J

    .line 899
    :cond_6b
    :goto_6b
    iput-wide v6, p0, mLastUpdateMobileTx:J

    .line 900
    add-long/2addr v4, v2

    .line 901
    const-wide/16 v2, 0x0

    .line 904
    invoke-direct {p0}, getTrafficMobileRx()J

    move-result-wide v6

    .line 905
    iget-wide v10, p0, mLastUpdateMobileRx:J

    cmp-long v1, v6, v10

    if-ltz v1, :cond_eb

    .line 906
    iget-wide v10, p0, mLastUpdateMobileRx:J

    sub-long v2, v6, v10

    .line 907
    iget-boolean v1, p0, mDataStatsEnabled:Z

    if-eqz v1, :cond_87

    .line 908
    iget-wide v10, p0, mStorageMobileRx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, mStorageMobileRx:J

    .line 914
    :cond_87
    :goto_87
    iput-wide v6, p0, mLastUpdateMobileRx:J

    .line 915
    add-long/2addr v4, v2

    .line 916
    const-wide/16 v2, 0x0

    .line 918
    cmp-long v1, v4, v12

    if-lez v1, :cond_93

    .line 919
    invoke-direct {p0, v4, v5}, logDataCall(J)Z

    .line 921
    :cond_93
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 924
    iget v1, p0, mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v1, v10, :cond_e3

    .line 925
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "deviceWifiSent"

    iget-wide v10, p0, mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 927
    const-string/jumbo v1, "deviceWifiReceived"

    iget-wide v10, p0, mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 928
    const-string/jumbo v1, "deviceNetworkSent"

    iget-wide v10, p0, mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    const-string/jumbo v1, "deviceNetworkReceived"

    iget-wide v10, p0, mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 931
    const/4 v1, 0x0

    iput v1, p0, mDataStatsCounter:I

    .line 933
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_e3
    add-long v10, v8, v4

    return-wide v10

    .line 896
    :cond_e6
    iput-wide v12, p0, mDataCallLogLastTime:J

    .line 897
    iput-wide v12, p0, mDataCallLogLastValue:J

    goto :goto_6b

    .line 911
    :cond_eb
    iput-wide v12, p0, mDataCallLogLastTime:J

    .line 912
    iput-wide v12, p0, mDataCallLogLastValue:J

    goto :goto_87
.end method

.method private updateDataUsageState()V
    .registers 3

    .prologue
    .line 955
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 956
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v0}, getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, mWifiStatsEnabled:Z

    .line 957
    invoke-virtual {p0, v0}, getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, mDataStatsEnabled:Z

    .line 958
    invoke-virtual {p0, v0}, getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, mDataLogEnabled:Z

    .line 959
    invoke-virtual {p0, v0}, dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 960
    return-void
.end method

.method private final updateSignalStrength()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1457
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthDbm(Ljava/lang/Object;)I

    move-result v2

    .line 1458
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_e

    .line 1459
    const/4 v2, 0x0

    .line 1462
    :cond_e
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthLevelAsu(Ljava/lang/Object;)I

    move-result v1

    .line 1463
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_1b

    .line 1464
    const/4 v1, 0x0

    .line 1467
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dBm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, mSignalStrength:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_42} :catch_43

    .line 1472
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    :goto_42
    return-void

    .line 1469
    :catch_43
    move-exception v0

    .line 1470
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "DeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSignalStrength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .registers 7
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 455
    .local v0, "count":I
    if-eqz v2, :cond_10

    .line 457
    :try_start_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_1c

    move-result v0

    .line 458
    if-gez v0, :cond_10

    .line 459
    const/4 v0, 0x0

    .line 465
    :cond_10
    :goto_10
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    return-void

    .line 461
    :catch_1c
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public clearCallingLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 1046
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1048
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1057
    :goto_c
    return v1

    .line 1053
    :cond_d
    :try_start_d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CallingLog"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 1054
    :catch_16
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not clear call log "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public clearMMSLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1573
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1575
    :try_start_3
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 1579
    :goto_b
    return v1

    .line 1576
    :catch_c
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public clearSMSLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1254
    :try_start_3
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 1258
    :goto_b
    return v1

    .line 1255
    :catch_c
    move-exception v0

    .line 1256
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 940
    iget-boolean v3, p0, mWifiStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, mDataStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, mDataLogEnabled:Z

    if-nez v3, :cond_1c

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_1c
    move v0, v2

    .line 942
    .local v0, "policiesActive":Z
    :goto_1d
    if-eqz v0, :cond_35

    iget-boolean v3, p0, mDataUsageTimerActivated:Z

    if-nez v3, :cond_35

    .line 944
    iput-boolean v2, p0, mDataUsageTimerActivated:Z

    .line 945
    invoke-direct {p0}, dataUsageValuesUpdate()V

    .line 946
    iget-object v1, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, mDataUsageTimer:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    :cond_32
    :goto_32
    return-void

    .end local v0    # "policiesActive":Z
    :cond_33
    move v0, v1

    .line 940
    goto :goto_1d

    .line 947
    .restart local v0    # "policiesActive":Z
    :cond_35
    if-nez v0, :cond_32

    iget-boolean v2, p0, mDataUsageTimerActivated:Z

    if-eqz v2, :cond_32

    .line 949
    iput-boolean v1, p0, mDataUsageTimerActivated:Z

    .line 950
    iget-object v1, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

.method public enableCallingCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1266
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1267
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1268
    .local v0, "uid":I
    iget-object v1, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1269
    const/4 v1, 0x0

    .line 1272
    :goto_f
    return v1

    :cond_10
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_f
.end method

.method public enableMMSCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1490
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1491
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1493
    .local v1, "uId":I
    :try_start_6
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "mmsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_12

    move-result v2

    .line 1498
    :goto_11
    return v2

    .line 1495
    :catch_12
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable mms capture"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public enableSMSCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1169
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1170
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1172
    .local v1, "uId":I
    :try_start_6
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_12

    move-result v2

    .line 1177
    :goto_11
    return v2

    .line 1174
    :catch_12
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getAvailableCapacityExternal(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 275
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getAvailableCapacityInternal(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 295
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getAvailableRamMemory(Landroid/app/enterprise/ContextInfo;)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 558
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v8

    const-string v3, "Cached:"

    aput-object v3, v1, v9

    .line 559
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 560
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 563
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 566
    :cond_23
    aget-wide v4, v2, v8

    aget-wide v6, v2, v9

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public getBytesReceivedNetwork(Landroid/app/enterprise/ContextInfo;)J
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 675
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 676
    iget-wide v0, p0, mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi(Landroid/app/enterprise/ContextInfo;)J
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 665
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 666
    iget-wide v0, p0, mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork(Landroid/app/enterprise/ContextInfo;)J
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 670
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 671
    iget-wide v0, p0, mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi(Landroid/app/enterprise/ContextInfo;)J
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 660
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 661
    iget-wide v0, p0, mStorageWifiTx:J

    return-wide v0
.end method

.method public getCellTowerCID(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1382
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1383
    const/4 v1, -0x1

    .line 1385
    .local v1, "ret":I
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1386
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1387
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1388
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1392
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerLAC(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1396
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1397
    const/4 v1, -0x1

    .line 1399
    .local v1, "ret":I
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1400
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1401
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1402
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 1406
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerPSC(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1410
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1411
    const/4 v1, -0x1

    .line 1413
    .local v1, "ret":I
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1414
    iget-object v2, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1415
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1416
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v1

    .line 1420
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerRSSI(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1424
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1426
    const/16 v5, 0x63

    .line 1427
    .local v5, "ret":I
    iget-object v6, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_51

    .line 1428
    iget-object v6, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18

    .line 1429
    invoke-direct {p0}, updateSignalStrength()V

    .line 1430
    sget-object v6, mSignalStrength:Ljava/lang/String;

    .line 1452
    :goto_17
    return-object v6

    .line 1432
    :cond_18
    iget-object v6, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1433
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_51

    .line 1434
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1435
    .local v1, "cid":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_51

    .line 1436
    iget-object v6, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    .line 1437
    .local v3, "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_56

    .line 1438
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 1439
    .local v4, "nInfo":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    if-ne v6, v1, :cond_3b

    .line 1440
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v5

    .line 1452
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v4    # "nInfo":Landroid/telephony/NeighboringCellInfo;
    :cond_51
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    .line 1445
    .restart local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1    # "cid":I
    .restart local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_56
    const-string v6, "DeviceInfo"

    const-string v7, "Could not retrieve NeighboringCellInfo"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v6, mSignalStrength:Ljava/lang/String;

    goto :goto_17
.end method

.method public getDataCallLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1011
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1013
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "dataCallBytes"

    aput-object v8, v0, v7

    .line 1016
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1017
    .local v6, "where":Landroid/content/ContentValues;
    if-eqz p2, :cond_2c

    .line 1018
    new-instance v6, Landroid/content/ContentValues;

    .end local v6    # "where":Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1019
    .restart local v6    # "where":Landroid/content/ContentValues;
    const-string/jumbo v7, "dataCallDate>=?"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_2c
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1024
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_38

    .line 1025
    const/4 v4, 0x0

    .line 1042
    :cond_37
    return-object v4

    .line 1028
    :cond_38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1031
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1032
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

.method public getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 978
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 979
    const/4 v1, 0x0

    .line 980
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 983
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 984
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 985
    move v1, v2

    .line 989
    .end local v2    # "value":Z
    :cond_27
    return v1
.end method

.method public getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 650
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 651
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 652
    move v1, v2

    .line 656
    .end local v2    # "value":Z
    :cond_24
    return v1
.end method

.method public getDataUsageTimer(Landroid/app/enterprise/ContextInfo;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 723
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 726
    .local v0, "callingUid":I
    :try_start_2
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MISC"

    const-string/jumbo v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_c} :catch_e

    move-result v2

    .line 733
    .local v2, "i":I
    :goto_d
    return v2

    .line 728
    .end local v2    # "i":I
    :catch_e
    move-exception v1

    .line 729
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string/jumbo v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->printStackTrace()V

    .line 731
    const/4 v2, -0x1

    .restart local v2    # "i":I
    goto :goto_d
.end method

.method public getDeviceMaker(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 383
    const-string/jumbo v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 317
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 319
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_1c
    return-object v0
.end method

.method public getDeviceOS(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 390
    const-string/jumbo v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 397
    const-string/jumbo v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 404
    const-string/jumbo v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public getDeviceProcessorSpeed(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 511
    const-string v3, ""

    .line 512
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 515
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_20
    .catchall {:try_start_3 .. :try_end_f} :catchall_30

    .line 517
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_3f
    .catchall {:try_start_f .. :try_end_12} :catchall_3c

    move-result-object v3

    .line 523
    if-eqz v1, :cond_18

    .line 525
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1b

    :cond_18
    :goto_18
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v3

    .line 531
    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_1a
    return-object v4

    .line 526
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_1b
    move-exception v2

    .line 527
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 520
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_20
    move-exception v2

    .line 521
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 523
    if-eqz v0, :cond_29

    .line 525
    :try_start_26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2b

    :cond_29
    :goto_29
    move-object v4, v3

    .line 531
    .end local v3    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1a

    .line 526
    .end local v4    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 527
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v5

    :goto_31
    if-eqz v0, :cond_36

    .line 525
    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 528
    :cond_36
    :goto_36
    throw v5

    .line 526
    :catch_37
    move-exception v2

    .line 527
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 523
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3c
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_31

    .line 520
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3f
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_21
.end method

.method public getDeviceProcessorType(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_35
    .catchall {:try_start_1 .. :try_end_d} :catchall_44

    .line 489
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 490
    .local v4, "s":Ljava/lang/String;
    :cond_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 491
    invoke-direct {p0, v4}, getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_53
    .catchall {:try_start_e .. :try_end_17} :catchall_50

    move-result-object v3

    .line 492
    .local v3, "processorType":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 499
    if-eqz v1, :cond_1f

    .line 501
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_21

    :cond_1f
    :goto_1f
    move-object v0, v1

    .line 507
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "processorType":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_20
    return-object v3

    .line 502
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "processorType":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_21
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 499
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "processorType":Ljava/lang/String;
    :cond_26
    if-eqz v1, :cond_56

    .line 501
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2f

    move-object v0, v1

    .line 507
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2c
    :goto_2c
    const-string v3, ""

    goto :goto_20

    .line 502
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_2f
    move-exception v2

    .line 503
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 504
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2c

    .line 496
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/lang/String;
    :catch_35
    move-exception v2

    .line 497
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_36
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    .line 499
    if-eqz v0, :cond_2c

    .line 501
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2c

    .line 502
    :catch_3f
    move-exception v2

    .line 503
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 499
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v5

    :goto_45
    if-eqz v0, :cond_4a

    .line 501
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 504
    :cond_4a
    :goto_4a
    throw v5

    .line 502
    :catch_4b
    move-exception v2

    .line 503
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 499
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_50
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_45

    .line 496
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_53
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_36

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_56
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2c
.end method

.method public getDroppedCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 428
    const-string/jumbo v0, "dropped"

    invoke-direct {p0, p1, v0}, getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundMMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1537
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1538
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "mmsType"

    aput-object v8, v5, v7

    .line 1541
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1542
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1544
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1545
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_71} :catch_72

    goto :goto_26

    .line 1550
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 1551
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    return-object v4
.end method

.method public getInboundSMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "smsType"

    aput-object v8, v5, v7

    .line 1221
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1222
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1224
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1225
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_71} :catch_72

    goto :goto_26

    .line 1230
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 1231
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    return-object v4
.end method

.method public getIncomingCallingCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1358
    iget-object v7, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    :cond_10
    :goto_10
    return-object v4

    .line 1362
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1365
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1366
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1368
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1369
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1374
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1375
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public getMissedCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 432
    const-string/jumbo v0, "missed"

    invoke-direct {p0, p1, v0}, getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 303
    const-string/jumbo v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 310
    const-string/jumbo v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 362
    const-string/jumbo v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundMMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "mmsType"

    aput-object v8, v5, v7

    .line 1521
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1522
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1524
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1525
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_71} :catch_72

    goto :goto_26

    .line 1530
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 1531
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    return-object v4
.end method

.method public getOutboundSMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "smsType"

    aput-object v8, v5, v7

    .line 1201
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1202
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1204
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1205
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_71} :catch_72

    goto :goto_26

    .line 1210
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 1211
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    return-object v4
.end method

.method public getOutgoingCallingCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1330
    iget-object v7, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    :cond_10
    :goto_10
    return-object v4

    .line 1334
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1337
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1338
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1340
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1341
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1346
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1347
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public getPlatformSDK(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 369
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 376
    const-string/jumbo v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 339
    const-string v0, "UNKNOWN"

    .line 340
    .local v0, "platformName":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_b

    .line 341
    const-string v0, "GINGERBREAD"

    .line 355
    :cond_a
    :goto_a
    return-object v0

    .line 342
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_14

    .line 343
    const-string v0, "HONEYCOMB"

    goto :goto_a

    .line 344
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1d

    .line 345
    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_a

    .line 346
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_26

    .line 347
    const-string v0, "JELLY_BEAN"

    goto :goto_a

    .line 348
    :cond_26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_2f

    .line 349
    const-string v0, "KITKAT"

    goto :goto_a

    .line 350
    :cond_2f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_38

    .line 351
    const-string v0, "LOLLIPOP"

    goto :goto_a

    .line 352
    :cond_38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    .line 353
    const-string v0, "MARSHMALLOW"

    goto :goto_a
.end method

.method public getSerialNumber(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 328
    const-string/jumbo v1, "ril.serialnumber"

    invoke-direct {p0, v1, v2}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "rilSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "00000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 330
    :cond_16
    const-string/jumbo v1, "ro.serialno"

    invoke-direct {p0, v1, v2}, getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 332
    .end local v0    # "rilSerial":Ljava/lang/String;
    :cond_1d
    return-object v0
.end method

.method public getSuccessCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 436
    const-string/jumbo v0, "success"

    invoke-direct {p0, p1, v0}, getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 265
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTotalCapacityInternal(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 285
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTotalRamMemory(Landroid/app/enterprise/ContextInfo;)J
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x0

    .line 540
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v8

    .line 541
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 542
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 545
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 548
    :cond_1e
    aget-wide v4, v2, v8

    return-wide v4
.end method

.method public getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 623
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 624
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 625
    move v1, v2

    .line 629
    .end local v2    # "value":Z
    :cond_24
    return v1
.end method

.method public isCallingCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 1280
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V

    .line 1281
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    .line 1296
    :goto_d
    return v4

    .line 1286
    :cond_e
    :try_start_e
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1288
    .local v3, "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_30

    move-result v2

    .line 1289
    .local v2, "isEnabled":Z
    if-eqz v2, :cond_1c

    .line 1290
    const/4 v4, 0x1

    goto :goto_d

    .line 1293
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isEnabled":Z
    .end local v3    # "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_30
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    move v4, v5

    .line 1296
    goto :goto_d
.end method

.method public isDeviceLocked(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "isLocked":Z
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 251
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result v1

    .line 256
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :goto_10
    return v1

    .line 252
    :catch_11
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public declared-synchronized isDeviceRooted(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x1

    .line 1475
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1476
    sget v1, mRooting:I

    if-ne v1, v0, :cond_14

    .line 1477
    const-string v0, "DeviceInfo"

    const-string/jumbo v1, "isDeviceRooted : OK"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_1d

    .line 1478
    const/4 v0, 0x0

    .line 1482
    :goto_12
    monitor-exit p0

    return v0

    .line 1481
    :cond_14
    :try_start_14
    const-string v1, "DeviceInfo"

    const-string/jumbo v2, "isDeviceRooted : NOK"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_12

    .line 1475
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDeviceSecure(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 225
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "isSecure":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 229
    .local v4, "psToken":J
    :try_start_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_11

    .line 230
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 231
    :cond_11
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, "lu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 233
    .local v3, "userId":I
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_24
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2d

    move-result v1

    .line 238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    .end local v2    # "lu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "userId":I
    :goto_23
    return v1

    .line 234
    :catch_24
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 236
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2d
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isMMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1503
    :try_start_0
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "mmsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1505
    .local v3, "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1506
    .local v2, "policyStatus":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    move-result v4

    if-eqz v4, :cond_f

    .line 1507
    const/4 v4, 0x1

    .line 1513
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "policyStatus":Ljava/lang/Boolean;
    .end local v3    # "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_22
    return v4

    .line 1510
    :catch_23
    move-exception v0

    .line 1511
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public isSMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1181
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V

    .line 1183
    :try_start_3
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1185
    .local v3, "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1186
    .local v2, "policyStatus":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_26

    move-result v4

    if-eqz v4, :cond_12

    .line 1187
    const/4 v4, 0x1

    .line 1193
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "policyStatus":Ljava/lang/Boolean;
    .end local v3    # "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_25
    return v4

    .line 1190
    :catch_26
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1633
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1637
    invoke-direct {p0}, updateDataUsageState()V

    .line 1638
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1648
    return-void
.end method

.method public resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 440
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 441
    iget-object v1, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 442
    const/4 v0, 0x0

    .line 449
    :goto_c
    return v0

    .line 445
    :cond_d
    const/4 v0, 0x1

    .line 446
    .local v0, "status":Z
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 447
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 448
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 449
    goto :goto_c
.end method

.method public resetDataCallLogging(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 993
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 996
    iput-wide v2, p0, mDataCallLogLastTime:J

    .line 997
    iput-wide v2, p0, mDataCallLogLastValue:J

    .line 1000
    const/4 v0, 0x0

    .line 1002
    .local v0, "where":Landroid/content/ContentValues;
    if-eqz p2, :cond_17

    .line 1003
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "where":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    .restart local v0    # "where":Landroid/content/ContentValues;
    const-string/jumbo v1, "dataCallDate<=?"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_17
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 680
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 681
    iget-object v1, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    iput-wide v4, p0, mStorageWifiTx:J

    .line 684
    iput-wide v4, p0, mStorageWifiRx:J

    .line 685
    iput-wide v4, p0, mStorageMobileTx:J

    .line 686
    iput-wide v4, p0, mStorageMobileRx:J

    .line 687
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "deviceWifiSent"

    iget-wide v2, p0, mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    const-string/jumbo v1, "deviceWifiReceived"

    iget-wide v2, p0, mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 690
    const-string/jumbo v1, "deviceNetworkSent"

    iget-wide v2, p0, mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string/jumbo v1, "deviceNetworkReceived"

    iget-wide v2, p0, mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 694
    invoke-direct {p0}, getTrafficWifiTx()J

    move-result-wide v2

    iput-wide v2, p0, mLastUpdateWifiTx:J

    .line 695
    invoke-direct {p0}, getTrafficWifiRx()J

    move-result-wide v2

    iput-wide v2, p0, mLastUpdateWifiRx:J

    .line 696
    invoke-direct {p0}, getTrafficMobileTx()J

    move-result-wide v2

    iput-wide v2, p0, mLastUpdateMobileTx:J

    .line 697
    invoke-direct {p0}, getTrafficMobileRx()J

    move-result-wide v2

    iput-wide v2, p0, mLastUpdateMobileRx:J

    .line 698
    iget-boolean v1, p0, mDataUsageTimerActivated:Z

    if-eqz v1, :cond_73

    .line 699
    iget-object v1, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    :cond_73
    return-void
.end method

.method public setDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 965
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 966
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 967
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 968
    .local v1, "ret":Z
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 970
    if-eqz v1, :cond_1d

    .line 971
    invoke-virtual {p0, p1}, getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, mDataLogEnabled:Z

    .line 972
    invoke-virtual {p0, p1}, dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 974
    :cond_1d
    return v1
.end method

.method public setDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 633
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 634
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 635
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 636
    .local v1, "ret":Z
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 638
    if-eqz v1, :cond_1d

    .line 639
    invoke-virtual {p0, p1}, getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, mDataStatsEnabled:Z

    .line 640
    invoke-virtual {p0, p1}, dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 642
    :cond_1d
    return v1
.end method

.method public setDataUsageTimer(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seconds"    # I

    .prologue
    .line 704
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 705
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 706
    .local v0, "callingUid":I
    iget-object v2, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-lt p2, v2, :cond_15

    const/16 v2, 0x3c

    if-le p2, v2, :cond_16

    .line 709
    :cond_15
    const/4 p2, 0x3

    .line 711
    :cond_16
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 713
    if-eqz v1, :cond_2b

    .line 714
    invoke-direct {p0}, getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, mDataUsageTimer:I

    .line 716
    :cond_2b
    iget-boolean v2, p0, mDataUsageTimerActivated:Z

    if-eqz v2, :cond_39

    .line 717
    iget-object v2, p0, mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    :cond_39
    return v1
.end method

.method public setWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 607
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 608
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 609
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 610
    .local v1, "ret":Z
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 612
    if-eqz v1, :cond_1d

    .line 613
    invoke-virtual {p0, p1}, getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, mWifiStatsEnabled:Z

    .line 614
    invoke-virtual {p0, p1}, dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 616
    :cond_1d
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    .line 1309
    invoke-direct {p0}, enforcePhone()V

    .line 1311
    iget-object v1, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1322
    :goto_b
    return-void

    .line 1315
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "callingType"

    if-eqz p5, :cond_36

    const-string v1, "1"

    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v1, "callingStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v1, "callingAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v1, "callingTimeStamp"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v1, "callingDuration"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CallingLog"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_b

    .line 1316
    :cond_36
    const-string v1, "0"

    goto :goto_17
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 1557
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_32

    .line 1558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1559
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "MMS"

    .line 1561
    .local v2, "sTableName":Ljava/lang/String;
    :try_start_11
    const-string/jumbo v4, "mmsType"

    if-eqz p4, :cond_33

    const-string v3, "1"

    :goto_18
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string/jumbo v3, "mmsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v3, "mmsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string/jumbo v3, "mmsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1570
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "sTableName":Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 1561
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "sTableName":Ljava/lang/String;
    :cond_33
    const-string v3, "0"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    goto :goto_18

    .line 1566
    :catch_36
    move-exception v1

    .line 1567
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 1237
    invoke-direct {p0}, enforcePhone()V

    .line 1238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "SMS"

    .line 1241
    .local v2, "sTableName":Ljava/lang/String;
    :try_start_a
    const-string/jumbo v4, "smsType"

    if-eqz p4, :cond_2c

    const-string v3, "1"

    :goto_11
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string/jumbo v3, "smsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string/jumbo v3, "smsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string/jumbo v3, "smsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1249
    :goto_2b
    return-void

    .line 1241
    :cond_2c
    const-string v3, "0"
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_2f

    goto :goto_11

    .line 1246
    :catch_2f
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1643
    return-void
.end method
