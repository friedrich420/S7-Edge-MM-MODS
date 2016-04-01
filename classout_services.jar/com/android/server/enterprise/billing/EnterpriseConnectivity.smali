.class public Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_STATE:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field private static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field private static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final ACTION_NOTI_DISMISSED:Ljava/lang/String; = "com.android.server.enterprise.billing.notification_dismissed"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_TYPE_APN_UID:Ljava/lang/String; = "com.android.server.enterprise.billing.mapping_modified"

.field private static final ACTION_TYPE_CONNECTION_CHANGED:Ljava/lang/String; = "com.android.server.enterprise.billing.profile_turn_on_status_modified"

.field private static final ACTION_TYPE_ENABLED:Ljava/lang/String; = "com.android.server.enterprise.billing.action_enable_status_modified"

.field private static final ACTION_TYPE_OFFLOAD_TO_MOBILE:Ljava/lang/String; = "com.android.server.enterprise.billing.mobile_fallback_modified"

.field private static final ACTION_TYPE_OFFLOAD_TO_WIFI:Ljava/lang/String; = "com.android.server.enterprise.billing.wifi_fallback_modified"

.field private static final ACTION_TYPE_ROAMING_ALLOWED:Ljava/lang/String; = "com.android.server.enterprise.billing.roaming_modified"

.field private static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final DBG:Z = true

.field private static final EXTRA_APN_TYPE:Ljava/lang/String; = "ent_type"

.field private static final NETWORK_ENT1:I = 0x1c

.field private static final NETWORK_ENT2:I = 0x1d

.field private static final NETWORK_MOBILE:I = 0x0

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EntConnectivity"

.field private static final TEST_SINGLE_USER:Z

.field private static final VDBG:Z


# instance fields
.field private final mConnSvc:Landroid/net/IConnectivityManager;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

.field private mLooper:Landroid/os/Looper;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNMSvc:Landroid/os/INetworkManagementService;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_b
    sput-boolean v0, VDBG:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmSvc"    # Landroid/os/INetworkManagementService;
    .param p3, "connSvc"    # Landroid/net/IConnectivityManager;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v3, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 357
    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Handler;)V

    iput-object v3, p0, mMobileDataObserver:Landroid/database/ContentObserver;

    .line 365
    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v3, p0, mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v3, p0, mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, mNMSvc:Landroid/os/INetworkManagementService;

    .line 131
    iput-object p3, p0, mConnSvc:Landroid/net/IConnectivityManager;

    .line 132
    iput-object p4, p0, mLooper:Landroid/os/Looper;

    .line 134
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, mLooper:Landroid/os/Looper;

    .line 137
    :try_start_37
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v3

    iput-object v3, p0, mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3f} :catch_d4

    .line 141
    :goto_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mConnections:Ljava/util/ArrayList;

    .line 142
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 143
    iget-object v3, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 146
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v2, "sFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.enterprise.billing.mapping_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "com.android.server.enterprise.billing.wifi_fallback_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v3, "com.android.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v3, "com.android.server.enterprise.billing.action_enable_status_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v3, "com.android.server.enterprise.billing.mobile_fallback_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v3, "com.android.server.enterprise.billing.roaming_modified"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "dFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multi_sim_data_call"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    return-void

    .line 138
    .end local v0    # "dFilter":Landroid/content/IntentFilter;
    .end local v2    # "sFilter":Landroid/content/IntentFilter;
    :catch_d4
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error in enterprise billing db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, sloge(Ljava/lang/String;)V

    goto/16 :goto_3f
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 79
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, connectivityType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    .prologue
    .line 79
    iput-object p1, p0, mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mConnSvc:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, callbackToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mNMSvc:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 79
    sget-boolean v0, VDBG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    .line 79
    iget-object v0, p0, mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, slogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, sloge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, slogv(Ljava/lang/String;)V

    return-void
.end method

.method private callbackToName(I)Ljava/lang/String;
    .registers 3
    .param p1, "callbackType"    # I

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_1e

    .line 215
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 206
    :pswitch_6
    const-string v0, "LOSING"

    goto :goto_5

    .line 207
    :pswitch_9
    const-string v0, "PRECHECK"

    goto :goto_5

    .line 208
    :pswitch_c
    const-string v0, "AVAILABLE"

    goto :goto_5

    .line 209
    :pswitch_f
    const-string v0, "LOST"

    goto :goto_5

    .line 210
    :pswitch_12
    const-string v0, "CAP_CHANGED"

    goto :goto_5

    .line 211
    :pswitch_15
    const-string v0, "IP_CHANGED"

    goto :goto_5

    .line 212
    :pswitch_18
    const-string v0, "UNAVAIL"

    goto :goto_5

    .line 213
    :pswitch_1b
    const-string v0, "RELEASED"

    goto :goto_5

    .line 205
    :pswitch_data_1e
    .packed-switch 0x80001
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_f
        :pswitch_18
        :pswitch_12
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method

.method private connectivityType(Ljava/lang/String;)I
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 460
    if-eqz p1, :cond_1a

    .line 461
    const-string/jumbo v0, "ent1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 462
    const/16 v0, 0x1c

    .line 468
    :goto_d
    return v0

    .line 464
    :cond_e
    const-string/jumbo v0, "ent2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 465
    const/16 v0, 0x1d

    goto :goto_d

    .line 468
    :cond_1a
    const/4 v0, -0x1

    goto :goto_d
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 182
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private static slogd(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 484
    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private static slogv(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 478
    sget-boolean v0, VDBG:Z

    if-eqz v0, :cond_9

    .line 479
    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_9
    return-void
.end method


# virtual methods
.method public getActiveEnterpriseNetworkType(Ljava/lang/String;)I
    .registers 9
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, -0x1

    .line 300
    .local v0, "activeType":I
    :try_start_1
    iget-object v5, p0, mConnSvc:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 301
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_d

    .line 302
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_34

    move-result v0

    .line 307
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_d
    :goto_d
    iget-object v5, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 308
    .local v1, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 309
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v0

    .line 312
    .end local v0    # "activeType":I
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_33
    return v0

    .line 304
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "activeType":I
    :catch_34
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error getActiveEnterpriseNetworkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, sloge(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getEnterpriseNetworkType(II)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "def"    # I

    .prologue
    .line 192
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 193
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadToWifi()Z

    move-result v2

    if-eqz v2, :cond_2b

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 201
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local p2    # "def":I
    :cond_2a
    :goto_2a
    return p2

    .line 197
    .restart local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .restart local p2    # "def":I
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result p2

    goto :goto_2a
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 230
    if-nez p1, :cond_3

    .line 245
    :cond_3
    return-object v0
.end method

.method public getUserHandleForConnection(I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 249
    if-gez p1, :cond_4

    .line 257
    :cond_3
    :goto_3
    return-object v2

    .line 252
    :cond_4
    iget-object v3, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 253
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne p1, v3, :cond_a

    .line 254
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v2

    goto :goto_3
.end method

.method public getUsersForNetwork(I)[I
    .registers 8
    .param p1, "networkType"    # I

    .prologue
    .line 330
    iget-object v5, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 331
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v5

    if-ne v5, p1, :cond_6

    .line 332
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v4

    .line 333
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 334
    .local v3, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v5, v3

    if-ge v1, v5, :cond_36

    .line 335
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 340
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v1    # "i":I
    .end local v3    # "ret":[I
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_35
    const/4 v3, 0x0

    :cond_36
    return-object v3
.end method

.method public hasIPv6Address(Landroid/net/LinkProperties;)Z
    .registers 7
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x0

    .line 316
    const-string/jumbo v3, "sys.knox.islabtest"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 317
    sget-boolean v3, VDBG:Z

    if-eqz v3, :cond_16

    const-string v3, "EntConnectivity"

    const-string/jumbo v4, "lab testing "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_16
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 319
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1e

    .line 320
    const/4 v2, 0x1

    .line 325
    .end local v0    # "address":Landroid/net/LinkAddress;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    return v2

    :cond_34
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    goto :goto_33
.end method

.method public isAnyConnectionAllowed()Z
    .registers 4

    .prologue
    .line 265
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 266
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    const/4 v2, 0x1

    .line 271
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isAnyConnectionEnabled()Z
    .registers 4

    .prologue
    .line 279
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 280
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    const/4 v2, 0x1

    .line 285
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isEntApnEnabled(I)Z
    .registers 6
    .param p1, "connectionType"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v3, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 290
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 291
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_26

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x1

    .line 294
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_26
    return v2
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .registers 6
    .param p1, "activeNetwork"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 219
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 220
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onActiveDefaultNetworkChanged(ILandroid/net/LinkProperties;)V

    goto :goto_6

    .line 222
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_16
    return-void
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 173
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string/jumbo v4, "ent1"

    iget-object v5, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 176
    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->start()V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, slogd(Ljava/lang/String;)V

    goto :goto_15

    .line 179
    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_3b
    return-void
.end method
