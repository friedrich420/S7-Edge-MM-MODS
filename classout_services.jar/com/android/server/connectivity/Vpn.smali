.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private mAddress:Ljava/lang/String;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEgressIface:Ljava/lang/String;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxOldInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mV6Address:Ljava/lang/String;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mVpnUsers:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean v1, p0, mEnableTeardown:Z

    .line 175
    iput-object v4, p0, mVpnUsers:Ljava/util/List;

    .line 177
    iput-object v4, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-object v4, p0, mKnoxOldInterface:Ljava/lang/String;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, KNOXVPN_FEATURE:I

    .line 192
    iput v1, p0, KNOXVPN_MDM_ENABLED:I

    .line 193
    const/4 v0, 0x2

    iput v0, p0, KNOXVPN_CONTAINER_ENABLED:I

    .line 852
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 205
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 206
    iput-object p3, p0, mNetd:Landroid/os/INetworkManagementService;

    .line 207
    iput p4, p0, mUserHandle:I

    .line 208
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 210
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, mPackage:Ljava/lang/String;

    .line 211
    iget-object v0, p0, mPackage:Ljava/lang/String;

    iget v1, p0, mUserHandle:I

    invoke-direct {p0, v0, v1}, getAppUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mOwnerUID:I

    .line 214
    :try_start_32
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_7c

    .line 218
    :goto_37
    if-nez p4, :cond_59

    .line 220
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 243
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_59
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const-string v4, "VPN"

    const-string v5, ""

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 245
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 246
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 247
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 248
    return-void

    .line 215
    :catch_7c
    move-exception v6

    .line 216
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method private SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "block"    # Z

    .prologue
    .line 2193
    const-string/jumbo v3, "security.mdpp"

    const-string v4, "Disabled"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC property value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    if-eqz v0, :cond_bd

    const-string v3, "Enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "Enforcing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 2199
    :cond_33
    if-eqz p2, :cond_c7

    .line 2200
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_bd

    .line 2202
    :try_start_39
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2203
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2204
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2205
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2206
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "ipsec0"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 2207
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-virtual {p0, p1}, clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2211
    .local v1, "clatIpv6addr":Ljava/lang/String;
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2212
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2213
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2214
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "fe80::/64"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2215
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "2000::/4"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2216
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_bd} :catch_be

    .line 2233
    .end local v1    # "clatIpv6addr":Ljava/lang/String;
    :cond_bd
    :goto_bd
    return-void

    .line 2217
    :catch_be
    move-exception v2

    .line 2218
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Exception when enabling SetFirewallForVPN_CCMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 2224
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c7
    :try_start_c7
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_bd

    .line 2225
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2226
    const-string v3, "Vpn"

    const-string v4, "SetFirewallForVPN_CCMode disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d8} :catch_d9

    goto :goto_bd

    .line 2228
    :catch_d9
    move-exception v2

    .line 2229
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Exception when disabling SetFirewallForVPN_CCMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 146
    iput-object p1, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 146
    iput-object p1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    invoke-direct {p0}, agentDisconnect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-boolean v0, p0, mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget v0, p0, mUserHandle:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()Z
    .registers 1

    .prologue
    .line 146
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .prologue
    .line 146
    iput-object p1, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mV6Address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, mV6Address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 146
    iput-object p1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mKnoxOldInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, mKnoxOldInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget v0, p0, KNOXVPN_FEATURE:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/Vpn;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, KNOXVPN_FEATURE:I

    return p1
.end method

.method static synthetic access$3100([B)V
    .registers 1
    .param p0, "x0"    # [B

    .prologue
    .line 146
    invoke-static {p0}, wipeByteArray([B)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    invoke-direct {p0}, agentConnect()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mEgressIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 146
    iput-object p1, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mVpnUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    iput-object p1, p0, mVpnUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, hideNotification(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, mStatusIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 146
    iput-object p1, p0, mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private addVpnUserLocked(I)V
    .registers 25
    .param p1, "userHandle"    # I

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    if-nez v20, :cond_10

    .line 704
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "VPN is not active"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 707
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_129

    .line 709
    const/4 v13, -0x1

    .local v13, "start":I
    const/4 v14, -0x1

    .line 710
    .local v14, "stop":I
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 711
    .local v15, "uid":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_53

    .line 712
    move v13, v15

    .line 717
    :cond_51
    :goto_51
    move v14, v15

    .line 718
    goto :goto_3a

    .line 713
    :cond_53
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_51

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v14}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    move v13, v15

    goto :goto_51

    .line 719
    .end local v15    # "uid":I
    :cond_6b
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v14}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "start":I
    .end local v14    # "stop":I
    :cond_81
    :goto_81
    invoke-direct/range {p0 .. p0}, prepareStatusIntent()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[Legacy VPN]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c6

    .line 742
    const/4 v4, 0x0

    .line 743
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 744
    .local v16, "token":J
    const-string v11, ""

    .line 745
    .local v11, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 747
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 748
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2080

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 749
    if-eqz v4, :cond_11e

    .line 750
    invoke-virtual {v4, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 752
    invoke-virtual {v4, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 753
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    if-lez v20, :cond_11e

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    if-lez v20, :cond_11e

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 756
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050006

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 758
    .local v8, "height":I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 760
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 761
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 762
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_11e} :catch_1b8
    .catchall {:try_start_9a .. :try_end_11e} :catchall_1c1

    .line 768
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v8    # "height":I
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "width":I
    :cond_11e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v5, v1}, showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 774
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "label":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "token":J
    :goto_128
    return-void

    .line 720
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a9

    .line 722
    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v18

    .line 723
    .local v18, "userRange":Landroid/net/UidRange;
    move-object/from16 v0, v18

    iget v13, v0, Landroid/net/UidRange;->start:I

    .line 724
    .restart local v13    # "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_159
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_185

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 725
    .restart local v15    # "uid":I
    if-ne v15, v13, :cond_16e

    .line 726
    add-int/lit8 v13, v13, 0x1

    goto :goto_159

    .line 728
    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    add-int/lit8 v22, v15, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v13, v15, 0x1

    goto :goto_159

    .line 732
    .end local v15    # "uid":I
    :cond_185
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v13, v0, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_81

    .line 735
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "start":I
    .end local v18    # "userRange":Landroid/net/UidRange;
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_81

    .line 765
    .restart local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "label":Ljava/lang/String;
    .restart local v16    # "token":J
    :catch_1b8
    move-exception v7

    .line 766
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1b9
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Invalid application"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_1c1

    .line 768
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_1c1
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 772
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "label":Ljava/lang/String;
    .end local v16    # "token":J
    :cond_1c6
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_128
.end method

.method private agentConnect()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 497
    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 499
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 500
    :cond_13
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 505
    :goto_18
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 506
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 509
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 513
    .local v12, "token":J
    :try_start_34
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    iget-object v2, p0, mLooper:Landroid/os/Looper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "VPN"

    iget-object v5, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_86

    .line 521
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    iget v0, p0, mUserHandle:I

    invoke-direct {p0, v0}, addVpnUserLocked(I)V

    .line 526
    iget v0, p0, mUserHandle:I

    if-nez v0, :cond_90

    .line 527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 530
    :try_start_57
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_8b

    move-result-object v14

    .line 532
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 535
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 536
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, addVpnUserLocked(I)V

    goto :goto_68

    .line 502
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "token":J
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_80
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_18

    .line 521
    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .restart local v12    # "token":J
    :catchall_86
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 532
    :catchall_8b
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 540
    :cond_90
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, mVpnUsers:Ljava/util/List;

    iget-object v2, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    .line 541
    return-void
.end method

.method private agentDisconnect()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 558
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 561
    :cond_12
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 552
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 553
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 554
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 545
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    if-eqz p2, :cond_f

    .line 547
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 549
    :cond_f
    return-void
.end method

.method private copyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "toCopy"    # Ljava/lang/String;

    .prologue
    .line 2167
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2168
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 2169
    .local v1, "copy":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 2170
    const/4 v3, 0x0

    aput-char v3, v0, v2

    .line 2169
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2172
    :cond_13
    return-object v1
.end method

.method private copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "toCopy"    # [Ljava/lang/String;

    .prologue
    .line 2182
    if-eqz p1, :cond_14

    .line 2183
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 2184
    .local v0, "copy":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 2185
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2184
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2189
    .end local v0    # "copy":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_14
    const/4 v0, 0x0

    :cond_15
    return-object v0
.end method

.method private enforceControlPermission()V
    .registers 4

    .prologue
    .line 891
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1089
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1091
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    .line 1092
    return-object v1

    .line 1096
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 416
    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 417
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 426
    :goto_c
    return v2

    .line 419
    :cond_d
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 422
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_13
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_18

    move-result v2

    .local v2, "result":I
    goto :goto_c

    .line 423
    .end local v2    # "result":I
    :catch_18
    move-exception v0

    .line 424
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_c
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 694
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 695
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, getAppUid(Ljava/lang/String;I)I

    move-result v2

    .line 696
    .local v2, "uid":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 698
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_24
    return-object v3
.end method

.method private getVpnTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 2248
    packed-switch p1, :pswitch_data_1e

    .line 2266
    const-string v0, ""

    :goto_5
    return-object v0

    .line 2250
    :pswitch_6
    const-string v0, "PPTP"

    goto :goto_5

    .line 2252
    :pswitch_9
    const-string v0, "L2TP_IPSEC_RSA"

    goto :goto_5

    .line 2254
    :pswitch_c
    const-string v0, "L2TP_IPSEC_PSK"

    goto :goto_5

    .line 2256
    :pswitch_f
    const-string v0, "IPSEC_XAUTH_RSA"

    goto :goto_5

    .line 2258
    :pswitch_12
    const-string v0, "IPSEC_XAUTH_PSK"

    goto :goto_5

    .line 2260
    :pswitch_15
    const-string v0, "IPSEC_IKEV2_RSA"

    goto :goto_5

    .line 2262
    :pswitch_18
    const-string v0, "IPSEC_IKEV2_PSK"

    goto :goto_5

    .line 2264
    :pswitch_1b
    const-string v0, "IPSEC_HYBRID_RSA"

    goto :goto_5

    .line 2248
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_1b
        :pswitch_12
        :pswitch_f
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private hideNotification(I)V
    .registers 8
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x0

    .line 955
    iput-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 956
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 959
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_23

    .line 960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 962
    .local v2, "token":J
    const/4 v1, 0x0

    const v4, 0x1080a51

    :try_start_18
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    .end local v2    # "token":J
    :cond_23
    return-void

    .line 964
    .restart local v2    # "token":J
    :catchall_24
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .registers 3

    .prologue
    .line 688
    invoke-direct {p0}, isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, mOwnerUID:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isRunningLocked()Z
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, mInterface:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 7
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 2147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2148
    .local v2, "token":J
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2150
    const/4 v0, 0x1

    .line 2151
    .local v0, "result":Z
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1e

    .line 2152
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v1

    iput-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 2154
    :cond_1e
    iget-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v1, :cond_28

    .line 2155
    iget-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v1, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 2157
    :cond_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 411
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v1, 0x2f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 15

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x0

    .line 438
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v9, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 439
    .local v1, "allowIPv4":Z
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v9, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 441
    .local v2, "allowIPv6":Z
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 443
    .local v7, "lp":Landroid/net/LinkProperties;
    iget-object v9, p0, mInterface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 445
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v9, :cond_40

    .line 446
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 447
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 448
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 449
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 450
    goto :goto_22

    .line 453
    .end local v0    # "address":Landroid/net/LinkAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_40
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v9, :cond_6c

    .line 454
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 455
    .local v8, "route":Landroid/net/RouteInfo;
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 456
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 457
    .local v0, "address":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 458
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 459
    goto :goto_4e

    .line 462
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "route":Landroid/net/RouteInfo;
    :cond_6c
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v9, :cond_a5

    .line 463
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 464
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 465
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 466
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 467
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 468
    goto :goto_7a

    .line 470
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v4    # "dnsServer":Ljava/lang/String;
    :cond_94
    if-nez v1, :cond_a5

    .line 471
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 475
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_a5
    if-nez v1, :cond_b6

    .line 476
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 478
    :cond_b6
    if-nez v2, :cond_c7

    .line 479
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 483
    :cond_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v9, :cond_f0

    .line 485
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_da
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 486
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 489
    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_f0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 493
    return-object v7
.end method

.method private onUserAdded(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 803
    monitor-enter p0

    .line 804
    :try_start_1
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 805
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 806
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_38

    move-result v4

    if-eqz v4, :cond_2d

    .line 808
    :try_start_11
    invoke-direct {p0, p1}, addVpnUserLocked(I)V

    .line 809
    iget-object v4, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v4, :cond_2d

    .line 810
    invoke-direct {p0, p1}, uidRangesForUser(I)Ljava/util/List;

    move-result-object v2

    .line 811
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v5, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRange;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    invoke-virtual {v5, v4}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_2f
    .catchall {:try_start_11 .. :try_end_2d} :catchall_38

    .line 817
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit p0

    .line 818
    return-void

    .line 813
    :catch_2f
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Vpn"

    const-string v5, "Failed to add restricted user to owner"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 817
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_38
    move-exception v4

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v4
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 822
    monitor-enter p0

    .line 823
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 824
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 825
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_21

    move-result v3

    if-eqz v3, :cond_16

    .line 827
    :try_start_13
    invoke-direct {p0, p1}, removeVpnUserLocked(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 832
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 833
    return-void

    .line 828
    :catch_18
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_21
    move-exception v3

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v3
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 12
    .param p1, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 328
    .local v2, "token":J
    :try_start_4
    iget-object v5, p0, mInterface:Ljava/lang/String;

    if-eqz v5, :cond_3c

    .line 329
    iget-object v5, p0, mVpnUsers:Ljava/util/List;

    if-eqz v5, :cond_2b

    .line 330
    iget-object v5, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UidRange;

    .line 331
    .local v4, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v4}, Landroid/net/UidRange;->getStartUser()I

    move-result v5

    invoke-direct {p0, v5}, hideNotification(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_26

    goto :goto_12

    .line 376
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "uidRange":Landroid/net/UidRange;
    :catchall_26
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 335
    :cond_2b
    const/4 v5, 0x0

    :try_start_2c
    iput-object v5, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 336
    invoke-direct {p0}, agentDisconnect()V

    .line 338
    iget-object v5, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v5}, jniReset(Ljava/lang/String;)V

    .line 339
    const/4 v5, 0x0

    iput-object v5, p0, mInterface:Ljava/lang/String;

    .line 340
    const/4 v5, 0x0

    iput-object v5, p0, mVpnUsers:Ljava/util/List;

    .line 344
    :cond_3c
    iget-object v5, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_26

    if-eqz v5, :cond_a7

    .line 346
    :try_start_40
    iget-object v5, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn$Connection;->access$200(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v5

    const v6, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_52} :catch_100
    .catchall {:try_start_40 .. :try_end_52} :catchall_26

    .line 351
    :goto_52
    :try_start_52
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    const/4 v5, 0x0

    iput-object v5, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_26

    .line 359
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, mOwnerUID:I

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_b4
    .catchall {:try_start_5c .. :try_end_63} :catchall_26

    .line 364
    :goto_63
    :try_start_63
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switched from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput-object p1, p0, mPackage:Ljava/lang/String;

    .line 366
    iget v5, p0, mUserHandle:I

    invoke-direct {p0, p1, v5}, getAppUid(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, mOwnerUID:I
    :try_end_91
    .catchall {:try_start_63 .. :try_end_91} :catchall_26

    .line 368
    :try_start_91
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, mOwnerUID:I

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_da
    .catchall {:try_start_91 .. :try_end_98} :catchall_26

    .line 372
    :goto_98
    const/4 v5, 0x0

    :try_start_99
    iput-object v5, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 374
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v6, "prepare"

    invoke-direct {p0, v5, v6}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_26

    .line 376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    return-void

    .line 353
    :cond_a7
    :try_start_a7
    iget-object v5, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v5, :cond_5c

    .line 354
    iget-object v5, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 355
    const/4 v5, 0x0

    iput-object v5, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    goto :goto_5c

    .line 360
    :catch_b4
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to call protect() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_da
    move-exception v0

    .line 370
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to call protect() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_a7 .. :try_end_ff} :catchall_26

    goto :goto_98

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_100
    move-exception v5

    goto/16 :goto_52
.end method

.method private prepareStatusIntent()V
    .registers 4

    .prologue
    .line 909
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 911
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 913
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    return-void

    .line 913
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 790
    iget-object v1, p0, mVpnUsers:Ljava/util/List;

    if-nez v1, :cond_c

    .line 791
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_c
    invoke-direct {p0, p1}, uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 794
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_25

    .line 795
    iget-object v2, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    .line 797
    :cond_25
    iget-object v1, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 799
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 938
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 939
    const-string v4, "Vpn"

    const-string/jumbo v5, "showNotification : LOCKDOWN_VPN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_14
    :goto_14
    return-void

    .line 942
    :cond_15
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 943
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_14

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 946
    .local v2, "token":J
    :try_start_26
    iget-object v4, p0, mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v4}, createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 947
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    const v5, 0x1080a51

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3c

    .line 949
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .end local v1    # "notification":Landroid/app/Notification;
    :catchall_3c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1313
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, stopLegacyVpnPrivileged()V

    .line 1316
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, prepareInternal(Ljava/lang/String;)V

    .line 1317
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_1a

    .line 1320
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1323
    :cond_1a
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1324
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 1325
    monitor-exit p0

    return-void

    .line 1313
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .registers 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    .line 780
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 782
    .local v1, "range":Landroid/net/UidRange;
    iget v4, v1, Landroid/net/UidRange;->start:I

    iget v5, v3, Landroid/net/UidRange;->start:I

    if-lt v4, v5, :cond_f

    iget v4, v1, Landroid/net/UidRange;->stop:I

    iget v5, v3, Landroid/net/UidRange;->stop:I

    if-gt v4, v5, :cond_f

    .line 783
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 786
    .end local v1    # "range":Landroid/net/UidRange;
    :cond_2b
    return-object v2
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_34

    .line 270
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 272
    :cond_34
    return-void
.end method

.method private static wipeByteArray([B)V
    .registers 3
    .param p0, "byteArray"    # [B

    .prologue
    .line 2176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_a

    .line 2177
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 2176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2179
    :cond_a
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1e

    move-result v1

    if-nez v1, :cond_a

    .line 1005
    const/4 v0, 0x0

    .line 1011
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1007
    :cond_a
    :try_start_a
    iget-object v1, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1008
    .local v0, "success":Z
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_8

    .line 1009
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_8

    .line 1004
    .end local v0    # "success":Z
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1067
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, isRunningLocked()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_2a

    move-result v3

    if-nez v3, :cond_a

    .line 1077
    :cond_8
    :goto_8
    monitor-exit p0

    return v2

    .line 1070
    :cond_a
    :try_start_a
    iget-object v3, p0, mVpnUsers:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 1071
    iget-object v3, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 1072
    .local v1, "uidRange":Landroid/net/UidRange;
    iget v3, v1, Landroid/net/UidRange;->start:I

    if-gt v3, p1, :cond_14

    iget v3, v1, Landroid/net/UidRange;->stop:I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_2a

    if-gt p1, v3, :cond_14

    .line 1073
    const/4 v2, 0x1

    goto :goto_8

    .line 1067
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uidRange":Landroid/net/UidRange;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "64:ff9b::"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v0, "clatIpv6addr":Ljava/lang/StringBuffer;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2239
    .local v2, "octets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/4 v3, 0x4

    if-ge v1, v3, :cond_29

    .line 2240
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2241
    const/4 v3, 0x1

    if-ne v1, v3, :cond_26

    .line 2242
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2239
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2244
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 13
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 918
    if-nez p1, :cond_47

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040447

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "title":Ljava/lang/String;
    :goto_d
    iget-object v3, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_55

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040449

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "text":Ljava/lang/String;
    :goto_1c
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080a51

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 932
    .local v0, "notification":Landroid/app/Notification;
    return-object v0

    .line 918
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_47
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040448

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 920
    .restart local v2    # "title":Ljava/lang/String;
    :cond_55
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104044a

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 28
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 574
    .local v12, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, mOwnerUID:I

    move/from16 v23, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_a9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1f

    .line 575
    const/16 v20, 0x0

    .line 678
    :goto_1d
    monitor-exit p0

    return-object v20

    .line 578
    :cond_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_32

    .line 579
    const/16 v20, 0x0

    goto :goto_1d

    .line 582
    :cond_32
    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.net.VpnService"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_a9

    move-result-wide v18

    .line 587
    .local v18, "token":J
    :try_start_52
    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 588
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v22

    if-nez v22, :cond_7c

    const-string/jumbo v22, "no_config_vpn"

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v22

    if-eqz v22, :cond_ac

    .line 590
    :cond_7c
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Restricted users cannot establish VPNs"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_84} :catch_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_a4

    .line 601
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catch_84
    move-exception v7

    .line 602
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_85
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_a4
    .catchall {:try_start_85 .. :try_end_a4} :catchall_a4

    .line 604
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_a4
    move-exception v22

    :try_start_a5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a9

    .line 573
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "mgr":Landroid/os/UserManager;
    .end local v18    # "token":J
    :catchall_a9
    move-exception v22

    monitor-exit p0

    throw v22

    .line 593
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "mgr":Landroid/os/UserManager;
    .restart local v18    # "token":J
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_ac
    :try_start_ac
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 595
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_e7

    .line 596
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 598
    :cond_e7
    const-string v22, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11e

    .line 599
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not require "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_11e} :catch_84
    .catchall {:try_start_ac .. :try_end_11e} :catchall_a4

    .line 604
    :cond_11e
    :try_start_11e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 609
    .local v13, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v15, v0, mInterface:Ljava/lang/String;

    .line 610
    .local v15, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 611
    .local v14, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v16, v0

    .line 612
    .local v16, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v17, v0

    .line 616
    .local v17, "oldUsers":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, jniCreate(IZ)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_156
    .catchall {:try_start_11e .. :try_end_156} :catchall_a9

    move-result-object v20

    .line 618
    .local v20, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_157
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v23, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, jniGetName(I)Ljava/lang/String;

    move-result-object v11

    .line 622
    .local v11, "interfaze":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v5, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_180
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1c7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 624
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a6
    .catch Ljava/lang/RuntimeException; {:try_start_157 .. :try_end_1a6} :catch_1a7
    .catchall {:try_start_157 .. :try_end_1a6} :catchall_a9

    goto :goto_180

    .line 666
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "interfaze":Ljava/lang/String;
    :catch_1a7
    move-exception v7

    .line 667
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_1a8
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 668
    invoke-direct/range {p0 .. p0}, agentDisconnect()V

    .line 670
    move-object/from16 v0, p0

    iput-object v13, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 671
    move-object/from16 v0, p0

    iput-object v14, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 672
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mVpnUsers:Ljava/util/List;

    .line 673
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 674
    move-object/from16 v0, p0

    iput-object v15, v0, mInterface:Ljava/lang/String;

    .line 675
    throw v7
    :try_end_1c7
    .catchall {:try_start_1a8 .. :try_end_1c7} :catchall_a9

    .line 626
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "interfaze":Ljava/lang/String;
    :cond_1c7
    :try_start_1c7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e3

    .line 627
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "At least one address must be specified"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 629
    :cond_1e3
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 630
    .local v6, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x4000001

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v10, v6, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v22

    if-nez v22, :cond_22d

    .line 633
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot bind "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 636
    :cond_22d
    move-object/from16 v0, p0

    iput-object v6, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 637
    move-object/from16 v0, p0

    iput-object v11, v0, mInterface:Ljava/lang/String;

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 642
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 645
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mVpnUsers:Ljava/util/List;

    .line 647
    invoke-direct/range {p0 .. p0}, agentConnect()V

    .line 649
    if-eqz v14, :cond_278

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 655
    :cond_278
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 656
    if-eqz v15, :cond_28c

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28c

    .line 657
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, jniReset(Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_28c} :catch_1a7
    .catchall {:try_start_1c7 .. :try_end_28c} :catchall_a9

    .line 661
    :cond_28c
    :try_start_28c
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v22

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_299
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_299} :catch_2c9
    .catch Ljava/lang/RuntimeException; {:try_start_28c .. :try_end_299} :catch_1a7
    .catchall {:try_start_28c .. :try_end_299} :catchall_a9

    .line 677
    :try_start_299
    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Established by "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c7
    .catchall {:try_start_299 .. :try_end_2c7} :catchall_a9

    goto/16 :goto_1d

    .line 662
    :catch_2c9
    move-exception v7

    .line 663
    .local v7, "e":Ljava/io/IOException;
    :try_start_2ca
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_2ed
    .catch Ljava/lang/RuntimeException; {:try_start_2ca .. :try_end_2ed} :catch_1a7
    .catchall {:try_start_2ca .. :try_end_2ed} :catchall_a9
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 1366
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 1367
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1369
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, enforceControlPermission()V

    .line 1346
    invoke-virtual {p0}, getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1345
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .prologue
    .line 1354
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-nez v1, :cond_8

    const/4 v0, 0x0

    .line 1362
    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    .line 1356
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1357
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1358
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1359
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1360
    iget-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    goto :goto_6

    .line 1354
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_9

    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result v0

    if-nez v0, :cond_a

    .line 1046
    const/4 v0, 0x0

    .line 1048
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_8

    .line 1045
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 839
    invoke-direct {p0}, enforceControlPermission()V

    .line 840
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    move-result v1

    if-nez v1, :cond_a

    .line 1057
    const/4 v0, 0x0

    .line 1063
    :goto_8
    monitor-exit p0

    return-object v0

    .line 1060
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1061
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1062
    iget-object v1, p0, mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_18

    goto :goto_8

    .line 1056
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideNotificationForLockdown()V
    .registers 3

    .prologue
    .line 999
    const-string v0, "Vpn"

    const-string/jumbo v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget v0, p0, mUserHandle:I

    invoke-direct {p0, v0}, hideNotification(I)V

    .line 1001
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 846
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 850
    :goto_6
    monitor-exit p0

    return-void

    .line 846
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 847
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 293
    monitor-enter p0

    if-eqz p1, :cond_39

    .line 294
    :try_start_5
    iget v2, p0, mUserHandle:I

    invoke-direct {p0, p1, v2}, getAppUid(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, mOwnerUID:I

    if-eq v2, v3, :cond_24

    .line 297
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-direct {p0, p1}, isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 298
    invoke-direct {p0, p1}, prepareInternal(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_54

    .line 320
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    move v0, v1

    .line 301
    goto :goto_20

    .line 302
    :cond_24
    :try_start_24
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-direct {p0, p1}, isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 305
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, prepareInternal(Ljava/lang/String;)V

    move v0, v1

    .line 306
    goto :goto_20

    .line 311
    :cond_39
    if-eqz p2, :cond_20

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget v1, p0, mUserHandle:I

    invoke-direct {p0, p2, v1}, getAppUid(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, mOwnerUID:I

    if-eq v1, v2, :cond_20

    .line 317
    :cond_4d
    invoke-direct {p0}, enforceControlPermission()V

    .line 319
    invoke-direct {p0, p2}, prepareInternal(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_54

    goto :goto_20

    .line 293
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1e

    move-result v1

    if-nez v1, :cond_a

    .line 1016
    const/4 v0, 0x0

    .line 1022
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1018
    :cond_a
    :try_start_a
    iget-object v1, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1019
    .local v0, "success":Z
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_8

    .line 1020
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_8

    .line 1015
    .end local v0    # "success":Z
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, mEnableTeardown:Z

    .line 261
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .prologue
    .line 385
    invoke-direct {p0}, enforceControlPermission()V

    .line 387
    iget v5, p0, mUserHandle:I

    invoke-direct {p0, p1, v5}, getAppUid(Ljava/lang/String;I)I

    move-result v4

    .line 388
    .local v4, "uid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    const-string v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 404
    :cond_14
    :goto_14
    return-void

    .line 393
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 395
    .local v2, "token":J
    :try_start_19
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 397
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v6, 0x2f

    if-eqz p2, :cond_2f

    const/4 v5, 0x0

    :goto_28
    invoke-virtual {v0, v6, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_31
    .catchall {:try_start_19 .. :try_end_2b} :catchall_58

    .line 402
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .line 397
    :cond_2f
    const/4 v5, 0x1

    goto :goto_28

    .line 399
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_31
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_58

    .line 402
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 6
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3c

    move-result v1

    if-nez v1, :cond_a

    .line 1027
    const/4 v1, 0x0

    .line 1041
    :goto_8
    monitor-exit p0

    return v1

    .line 1029
    :cond_a
    if-nez p1, :cond_13

    .line 1030
    :try_start_c
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1041
    :cond_11
    const/4 v1, 0x1

    goto :goto_8

    .line 1032
    :cond_13
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 1034
    aget-object v1, p1, v0

    if-nez v1, :cond_2c

    .line 1035
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1033
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1037
    :cond_2c
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_3c

    goto :goto_29

    .line 1026
    .end local v0    # "i":I
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showNotificationForLockdown(II)V
    .registers 11
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 970
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotificationForLockdown :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget v4, p0, mUserHandle:I

    .line 975
    .local v4, "user":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 976
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 977
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_85

    .line 978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 980
    .local v2, "token":J
    :try_start_3a
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x104044e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 988
    .local v1, "notification":Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x62

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 991
    const/4 v5, 0x0

    const v6, 0x1080a51

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_82
    .catchall {:try_start_3a .. :try_end_82} :catchall_86

    .line 993
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "token":J
    :cond_85
    return-void

    .line 993
    .restart local v2    # "token":J
    :catchall_86
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1108
    invoke-direct {p0}, enforceControlPermission()V

    .line 1109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1111
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 1113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1115
    return-void

    .line 1113
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 29
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1126
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "KeyStore isn\'t unlocked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1128
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v16

    .line 1129
    .local v16, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget v3, v0, mUserHandle:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 1130
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_3a

    const-string/jumbo v3, "no_config_vpn"

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v5, v0, mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1132
    :cond_3a
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1135
    :cond_42
    invoke-static/range {p3 .. p3}, findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v15

    .line 1136
    .local v15, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    .line 1137
    .local v13, "gateway":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v14

    .line 1138
    .local v14, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, mEgressIface:Ljava/lang/String;

    .line 1139
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") activated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v18, ""

    .line 1143
    .local v18, "privateKey":Ljava/lang/String;
    const-string v22, ""

    .line 1144
    .local v22, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1145
    .local v10, "caCert":Ljava/lang/String;
    const-string v20, ""

    .line 1147
    .local v20, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c2

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1150
    .local v23, "value":[B
    if-nez v23, :cond_127

    const/16 v22, 0x0

    .line 1152
    .end local v23    # "value":[B
    :cond_c2
    :goto_c2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ec

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1154
    .restart local v23    # "value":[B
    if-nez v23, :cond_133

    const/4 v10, 0x0

    .line 1156
    .end local v23    # "value":[B
    :cond_ec
    :goto_ec
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_117

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1158
    .restart local v23    # "value":[B
    if-nez v23, :cond_13d

    const/16 v20, 0x0

    .line 1160
    .end local v23    # "value":[B
    :cond_117
    :goto_117
    if-eqz v18, :cond_11f

    if-eqz v22, :cond_11f

    if-eqz v10, :cond_11f

    if-nez v20, :cond_149

    .line 1161
    :cond_11f
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot load credentials"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1150
    .restart local v23    # "value":[B
    :cond_127
    new-instance v22, Ljava/lang/String;

    .end local v22    # "userCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_c2

    .line 1154
    .restart local v22    # "userCert":Ljava/lang/String;
    :cond_133
    new-instance v10, Ljava/lang/String;

    .end local v10    # "caCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    invoke-direct {v10, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_ec

    .line 1158
    .restart local v10    # "caCert":Ljava/lang/String;
    :cond_13d
    new-instance v20, Ljava/lang/String;

    .end local v20    # "serverCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_117

    .line 1165
    .end local v23    # "value":[B
    .restart local v20    # "serverCert":Ljava/lang/String;
    :cond_149
    const/16 v19, 0x0

    .line 1166
    .local v19, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_544

    .line 1188
    :goto_152
    const-string/jumbo v3, "security.mdpp"

    const-string v4, "Disabled"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1192
    .local v11, "ccModePropertyValue":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_54e

    .line 1259
    :goto_162
    move-object/from16 v24, v19

    .line 1260
    .local v24, "vpnParameters":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a7

    .line 1262
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connecting to VPN network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to server address : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getVpnTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed - unsecure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1310
    :goto_1c1
    return-void

    .line 1168
    .end local v11    # "ccModePropertyValue":Ljava/lang/String;
    .end local v24    # "vpnParameters":[Ljava/lang/String;
    :pswitch_1c2
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "udppsk"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x5

    const-string v4, "1701"

    aput-object v4, v19, v3

    .line 1172
    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_152

    .line 1174
    :pswitch_1ec
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "udprsa"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    aput-object v18, v19, v3

    const/4 v3, 0x4

    aput-object v22, v19, v3

    const/4 v3, 0x5

    aput-object v10, v19, v3

    const/4 v3, 0x6

    aput-object v20, v19, v3

    const/4 v3, 0x7

    const-string v4, "1701"

    aput-object v4, v19, v3

    .line 1178
    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_152

    .line 1180
    :pswitch_215
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hybridrsa"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    aput-object v10, v19, v3

    const/4 v3, 0x4

    aput-object v20, v19, v3

    const/4 v3, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v4, v19, v3

    const/16 v3, 0x8

    aput-object v13, v19, v3

    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_152

    .line 1194
    .restart local v11    # "ccModePropertyValue":Ljava/lang/String;
    :pswitch_24a
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "xauthpsk"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    aput-object v11, v19, v3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_2a1

    const-string v3, "+pfs"

    :goto_277
    aput-object v3, v19, v4

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    .line 1201
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_XAUTH_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 1194
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_2a1
    const-string/jumbo v3, "nonpfs"

    goto :goto_277

    .line 1204
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_2a5
    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "xauthrsa"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    aput-object v18, v19, v3

    const/4 v3, 0x3

    aput-object v22, v19, v3

    const/4 v3, 0x4

    aput-object v10, v19, v3

    const/4 v3, 0x5

    aput-object v20, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    aput-object v11, v19, v3

    const/16 v4, 0x8

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_304

    const-string v3, "+pfs"

    :goto_2d8
    aput-object v3, v19, v4

    const/16 v3, 0x9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/16 v3, 0xa

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    .line 1210
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_XAUTH_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 1204
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_304
    const-string/jumbo v3, "nonpfs"

    goto :goto_2d8

    .line 1213
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_308
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ikev2psk"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    aput-object v11, v19, v3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_350

    const-string v3, "+pfs"

    :goto_334
    aput-object v3, v19, v4

    .line 1218
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_IKEV2_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 1213
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_350
    const-string/jumbo v3, "nonpfs"

    goto :goto_334

    .line 1221
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_354
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ikev2rsa"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    aput-object v18, v19, v3

    const/4 v3, 0x3

    aput-object v22, v19, v3

    const/4 v3, 0x4

    aput-object v10, v19, v3

    const/4 v3, 0x5

    aput-object v20, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    aput-object v11, v19, v3

    const/16 v4, 0x8

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_3a3

    const-string v3, "+pfs"

    :goto_387
    aput-object v3, v19, v4

    .line 1226
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_IKEV2_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 1221
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_3a3
    const-string/jumbo v3, "nonpfs"

    goto :goto_387

    .line 1274
    .restart local v19    # "racoon":[Ljava/lang/String;
    .restart local v24    # "vpnParameters":[Ljava/lang/String;
    :cond_3a7
    const/16 v17, 0x0

    .line 1275
    .local v17, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_55a

    .line 1296
    :goto_3b0
    new-instance v12, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v12}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1297
    .local v12, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1298
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1299
    iput-object v14, v12, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1300
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1302
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3ff

    .line 1304
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1306
    :cond_3ff
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41f

    .line 1307
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1309
    :cond_41f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v12, v1, v2}, startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1c1

    .line 1277
    .end local v12    # "config":Lcom/android/internal/net/VpnConfig;
    :pswitch_42a
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v17, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "pptp"

    aput-object v4, v17, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x3

    const-string v4, "1723"

    aput-object v4, v17, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "name"

    aput-object v4, v17, v3

    const/4 v3, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "password"

    aput-object v4, v17, v3

    const/4 v3, 0x7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v17, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "linkname"

    aput-object v4, v17, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "vpn"

    aput-object v4, v17, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "refuse-eap"

    aput-object v4, v17, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "nodefaultroute"

    aput-object v4, v17, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "usepeerdns"

    aput-object v4, v17, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "idle"

    aput-object v4, v17, v3

    const/16 v3, 0xe

    const-string v4, "1800"

    aput-object v4, v17, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "mtu"

    aput-object v4, v17, v3

    const/16 v3, 0x10

    const-string v4, "1400"

    aput-object v4, v17, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "mru"

    aput-object v4, v17, v3

    const/16 v3, 0x12

    const-string v4, "1400"

    aput-object v4, v17, v3

    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v3, :cond_4b7

    const-string v3, "+mppe"

    :goto_4b3
    aput-object v3, v17, v4

    .line 1284
    .restart local v17    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_3b0

    .line 1277
    .end local v17    # "mtpd":[Ljava/lang/String;
    :cond_4b7
    const-string/jumbo v3, "nomppe"

    goto :goto_4b3

    .line 1287
    .restart local v17    # "mtpd":[Ljava/lang/String;
    :pswitch_4bb
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v17, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "l2tp"

    aput-object v4, v17, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x3

    const-string v4, "1701"

    aput-object v4, v17, v3

    const/4 v3, 0x4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "name"

    aput-object v4, v17, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "password"

    aput-object v4, v17, v3

    const/16 v3, 0x8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v17, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "linkname"

    aput-object v4, v17, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "vpn"

    aput-object v4, v17, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "refuse-eap"

    aput-object v4, v17, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "nodefaultroute"

    aput-object v4, v17, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "usepeerdns"

    aput-object v4, v17, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "idle"

    aput-object v4, v17, v3

    const/16 v3, 0xf

    const-string v4, "1800"

    aput-object v4, v17, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "mtu"

    aput-object v4, v17, v3

    const/16 v3, 0x11

    const-string v4, "1300"

    aput-object v4, v17, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "mru"

    aput-object v4, v17, v3

    const/16 v3, 0x13

    const-string v4, "1300"

    aput-object v4, v17, v3

    .restart local v17    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_3b0

    .line 1166
    :pswitch_data_544
    .packed-switch 0x1
        :pswitch_1c2
        :pswitch_1ec
        :pswitch_215
    .end packed-switch

    .line 1192
    :pswitch_data_54e
    .packed-switch 0x4
        :pswitch_24a
        :pswitch_2a5
        :pswitch_308
        :pswitch_354
    .end packed-switch

    .line 1275
    :pswitch_data_55a
    .packed-switch 0x0
        :pswitch_42a
        :pswitch_4bb
        :pswitch_4bb
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 3

    .prologue
    .line 1329
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_11

    .line 1330
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1333
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 1336
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    .line 1338
    :cond_11
    monitor-exit p0

    return-void

    .line 1336
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 1329
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
