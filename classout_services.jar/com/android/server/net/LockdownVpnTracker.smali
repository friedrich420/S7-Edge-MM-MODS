.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysOnConnected:Z

.field private mChkThread:Ljava/lang/Thread;

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mStateLock:Ljava/lang/Object;

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, mChkThread:Ljava/lang/Thread;

    .line 100
    iput-boolean v4, p0, mAlwaysOnConnected:Z

    .line 133
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 119
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    .line 120
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, mConnService:Lcom/android/server/ConnectivityService;

    .line 121
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    .line 122
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "configIntent":Landroid/content/Intent;
    const-string v2, "android.net.vpn.PICK_LOCKDOWN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mConfigIntent:Landroid/app/PendingIntent;

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mResetIntent:Landroid/app/PendingIntent;

    .line 131
    return-void
.end method

.method private LazyHandleStateChangedLocked()V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 369
    iget-object v10, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 370
    .local v3, "egressInfo":Landroid/net/NetworkInfo;
    iget-object v10, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 372
    .local v4, "egressProp":Landroid/net/LinkProperties;
    iget-object v10, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 373
    .local v7, "vpnInfo":Landroid/net/NetworkInfo;
    iget-object v10, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    .line 376
    .local v6, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v3, :cond_29

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    :cond_29
    move v1, v9

    .line 378
    .local v1, "egressDisconnected":Z
    :goto_2a
    if-eqz v4, :cond_38

    iget-object v10, p0, mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_39

    :cond_38
    move v0, v9

    .line 381
    .local v0, "egressChanged":Z
    :cond_39
    if-nez v3, :cond_86

    move-object v5, v8

    .line 383
    .local v5, "egressTypeName":Ljava/lang/String;
    :goto_3c
    if-nez v4, :cond_8f

    move-object v2, v8

    .line 385
    .local v2, "egressIface":Ljava/lang/String;
    :goto_3f
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleStateChanged: egress="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-nez v1, :cond_72

    if-eqz v0, :cond_7c

    .line 389
    :cond_72
    invoke-direct {p0}, clearSourceRulesLocked()V

    .line 390
    iput-object v8, p0, mAcceptedEgressIface:Ljava/lang/String;

    .line 391
    iget-object v8, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 393
    :cond_7c
    if-eqz v1, :cond_94

    .line 394
    iget-object v8, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->hideNotificationForLockdown()V

    .line 439
    :cond_83
    :goto_83
    return-void

    .end local v0    # "egressChanged":Z
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressIface":Ljava/lang/String;
    .end local v5    # "egressTypeName":Ljava/lang/String;
    :cond_84
    move v1, v0

    .line 376
    goto :goto_2a

    .line 381
    .restart local v0    # "egressChanged":Z
    .restart local v1    # "egressDisconnected":Z
    :cond_86
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3c

    .line 383
    .restart local v5    # "egressTypeName":Ljava/lang/String;
    :cond_8f
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 398
    .restart local v2    # "egressIface":Ljava/lang/String;
    :cond_94
    iget-boolean v8, p0, mAlwaysOnConnected:Z

    if-eqz v8, :cond_a8

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_a8

    if-eqz v6, :cond_a8

    .line 399
    const-string v8, "LockdownVpnTracker"

    const-string v9, "LazyHandleStateChangedLocked(): Always-on VPN already connected."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 403
    :cond_a8
    iget-object v8, p0, mChkThread:Ljava/lang/Thread;

    if-eqz v8, :cond_bc

    .line 404
    iget-object v8, p0, mChkThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_83

    .line 405
    const-string v8, "LockdownVpnTracker"

    const-string v9, "LazyHandleStateChangedLocked(): Thread is still alive. Thread Bye Bye."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 409
    :cond_bc
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/net/LockdownVpnTracker$2;

    invoke-direct {v9, p0}, Lcom/android/server/net/LockdownVpnTracker$2;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, mChkThread:Ljava/lang/Thread;

    .line 436
    const-string v8, "LockdownVpnTracker"

    const-string v9, "Start thread for LazyHandleStateChangedLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v8, p0, mChkThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_83
.end method

.method static synthetic access$000(Lcom/android/server/net/LockdownVpnTracker;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 70
    invoke-direct {p0}, isIPv6Network()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/net/LockdownVpnTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 70
    invoke-direct {p0}, isClat4Activated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 70
    invoke-direct {p0}, handleStateChangedLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/LockdownVpnTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 70
    iget-boolean v0, p0, mAlwaysOnConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 70
    iput-object p1, p0, mChkThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private clearSourceRulesLocked()V
    .registers 8

    .prologue
    .line 333
    :try_start_0
    iget-object v3, p0, mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 334
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 335
    const/4 v3, 0x0

    iput-object v3, p0, mAcceptedIface:Ljava/lang/String;

    .line 337
    :cond_f
    iget-object v3, p0, mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_49

    .line 338
    iget-object v3, p0, mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 339
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_19

    .line 347
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_2a
    move-exception v1

    .line 348
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_33
    :try_start_33
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 343
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 345
    const/4 v3, 0x0

    iput-object v3, p0, mAcceptedSourceAddr:Ljava/util/List;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_49} :catch_2a

    .line 350
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_49
    return-void
.end method

.method private handleStateChangedLocked()V
    .registers 16

    .prologue
    .line 146
    iget-object v11, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 147
    .local v3, "egressInfo":Landroid/net/NetworkInfo;
    iget-object v11, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 149
    .local v4, "egressProp":Landroid/net/LinkProperties;
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 150
    .local v10, "vpnInfo":Landroid/net/NetworkInfo;
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    .line 152
    .local v9, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    const/4 v11, 0x0

    iput-boolean v11, p0, mAlwaysOnConnected:Z

    .line 154
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 155
    .local v5, "egressType":I
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_2a

    .line 156
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 159
    :cond_2a
    iget v11, p0, mErrorCount:I

    const/4 v12, 0x4

    if-le v11, v12, :cond_3b

    .line 160
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044d

    const v13, 0x1080a52

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 224
    :cond_3a
    :goto_3a
    return-void

    .line 162
    :cond_3b
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_c3

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v11

    if-nez v11, :cond_c3

    .line 163
    iget-object v11, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v11}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()I

    move-result v1

    .line 164
    .local v1, "checkProfile":I
    iget-object v11, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    if-nez v1, :cond_92

    .line 165
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Active network connected; starting VPN"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 167
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044b

    const v13, 0x1080a52

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 169
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, mAcceptedEgressIface:Ljava/lang/String;

    .line 173
    :try_start_6c
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v12, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 174
    const/4 v11, 0x1

    iput-boolean v11, p0, mAlwaysOnConnected:Z
    :try_end_7a
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_7a} :catch_7b

    goto :goto_3a

    .line 175
    :catch_7b
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v11, 0x0

    iput-object v11, p0, mAcceptedEgressIface:Ljava/lang/String;

    .line 177
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Failed to start VPN"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044d

    const v13, 0x1080a52

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto :goto_3a

    .line 180
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_92
    iget-object v11, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v11, 0x1

    if-ne v1, v11, :cond_aa

    .line 181
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044d

    const v13, 0x1080a52

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto :goto_3a

    .line 184
    :cond_aa
    iget-object v11, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v11, 0x2

    if-ne v1, v11, :cond_3a

    .line 185
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Invalid VPN profile; requires username and password"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x10407ee

    const v13, 0x1080a52

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto/16 :goto_3a

    .line 189
    .end local v1    # "checkProfile":I
    :cond_c3
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3a

    if-eqz v9, :cond_3a

    .line 190
    iget-object v7, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 191
    .local v7, "iface":Ljava/lang/String;
    iget-object v8, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 193
    .local v8, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v11, p0, mAcceptedIface:Ljava/lang/String;

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_df

    iget-object v11, p0, mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    .line 198
    :cond_df
    const-string v11, "LockdownVpnTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN connected using iface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sourceAddr="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 201
    iget-object v11, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044c

    const v13, 0x1080a51

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 202
    const/4 v11, 0x1

    iput-boolean v11, p0, mAlwaysOnConnected:Z

    .line 205
    :try_start_116
    invoke-direct {p0}, clearSourceRulesLocked()V

    .line 207
    iget-object v11, p0, mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x1

    invoke-interface {v11, v7, v12}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 208
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_123
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 209
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v11, 0x1

    invoke-direct {p0, v0, v11}, setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_133} :catch_134

    goto :goto_123

    .line 218
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_134
    move-exception v2

    .line 219
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Problem setting firewall rules"

    invoke-direct {v11, v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 212
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_13d
    :try_start_13d
    iget-object v11, p0, mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 213
    iget-object v11, p0, mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 215
    const/4 v11, 0x0

    iput v11, p0, mErrorCount:I

    .line 216
    iput-object v7, p0, mAcceptedIface:Ljava/lang/String;

    .line 217
    iput-object v8, p0, mAcceptedSourceAddr:Ljava/util/List;
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_157} :catch_134

    .line 222
    iget-object v11, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {p0, v3}, augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_3a
.end method

.method private hideNotification()V
    .registers 1

    .prologue
    .line 544
    return-void
.end method

.method private initLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 233
    const-string v3, "LockdownVpnTracker"

    const-string/jumbo v4, "initLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, v7}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 237
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "resetFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    :try_start_1f
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1f4

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 243
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1194

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 244
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x6a5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 247
    iget-object v3, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p0, v3}, clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 249
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 250
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 251
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "fe80::/64"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 252
    iget-object v3, p0, mNetService:Landroid/os/INetworkManagementService;

    const-string v4, "2000::/4"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_74} :catch_7e

    .line 256
    iput-boolean v7, p0, mAlwaysOnConnected:Z

    .line 258
    iget-object v4, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 259
    :try_start_79
    invoke-direct {p0}, LazyHandleStateChangedLocked()V

    .line 260
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_87

    .line 261
    return-void

    .line 253
    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    :catch_7e
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clatIpv6addr":Ljava/lang/String;
    :catchall_87
    move-exception v3

    :try_start_88
    monitor-exit v4
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v3
.end method

.method private isClat4Activated()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 487
    const/4 v1, 0x0

    .line 488
    .local v1, "hasIpAddr":Z
    :try_start_2
    const-string v6, "clat4"

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 489
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 490
    .local v3, "inetAddress":Ljava/net/InetAddress;
    const/4 v1, 0x1

    .line 491
    goto :goto_14

    .line 492
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_22
    if-nez v1, :cond_2d

    .line 493
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2c
    return v5

    .line 496
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2d
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_37

    .line 497
    const/4 v5, 0x1

    goto :goto_2c

    .line 499
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_37
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): no clat4 interface"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public static isEnabled()Z
    .registers 3

    .prologue
    .line 103
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 104
    .local v0, "keystore":Landroid/security/KeyStore;
    if-nez v0, :cond_10

    .line 106
    const-string v1, "LockdownVpnTracker"

    const-string/jumbo v2, "keystore is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 112
    :goto_f
    return v1

    .line 111
    :cond_10
    const-string v1, "LockdownVpnTracker"

    const-string v2, "Call LockDown isEnabled Function"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v1

    goto :goto_f
.end method

.method private isIPv6Network()I
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 443
    const/4 v7, 0x0

    .line 444
    .local v7, "ret":I
    :try_start_2
    iget-object v9, p0, mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 445
    .local v2, "egressInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_16

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_16
    const/4 v1, 0x1

    .line 448
    .local v1, "egressDisconnected":Z
    :goto_17
    if-eqz v1, :cond_25

    .line 449
    const-string v9, "LockdownVpnTracker"

    const-string/jumbo v10, "egressDisconnected is TRUE in isIPv6Network"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v7, 0x0

    .line 481
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .end local v7    # "ret":I
    :cond_22
    :goto_22
    return v7

    .restart local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .restart local v7    # "ret":I
    :cond_23
    move v1, v8

    .line 445
    goto :goto_17

    .line 454
    .restart local v1    # "egressDisconnected":Z
    :cond_25
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_29
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 455
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 456
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 457
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 458
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 459
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_39

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_39

    .line 460
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv4 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v7, 0x4

    .line 462
    goto :goto_22

    .line 465
    :cond_82
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rmnet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 466
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_c0

    instance-of v9, v5, Ljava/net/Inet6Address;

    if-eqz v9, :cond_c0

    .line 467
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv6 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v7, 0x6

    goto/16 :goto_39

    .line 470
    :cond_c0
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_39

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_39

    .line 471
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv4 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ee} :catch_f1

    .line 472
    const/4 v7, 0x4

    .line 473
    goto/16 :goto_22

    .line 479
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v4    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    :catch_f1
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "LockdownVpnTracker"

    const-string v10, "Exception : isIPv6Network()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 481
    goto/16 :goto_22
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .registers 5
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, mNetService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 358
    return-void
.end method

.method private showNotification(II)V
    .registers 3
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 540
    return-void
.end method

.method private shutdownLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 282
    const-string v2, "LockdownVpnTracker"

    const-string/jumbo v3, "shutdownLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_9
    iget-object v2, p0, mChkThread:Ljava/lang/Thread;

    if-eqz v2, :cond_21

    .line 286
    iget-object v2, p0, mChkThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 287
    const-string v2, "LockdownVpnTracker"

    const-string v3, "Thread must be exit in shutdownLocked()."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, mChkThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_96

    .line 295
    :cond_21
    :goto_21
    const/4 v2, 0x0

    iput-object v2, p0, mAcceptedEgressIface:Ljava/lang/String;

    .line 296
    iput v4, p0, mErrorCount:I

    .line 298
    iget-object v2, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 300
    :try_start_2b
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 301
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1194

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 302
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x6a5

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 305
    iget-object v2, p0, mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p0, v2}, clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 307
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1194

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 308
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    const/16 v3, 0x6a5

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 309
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "fe80::/64"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 310
    iget-object v2, p0, mNetService:Landroid/os/INetworkManagementService;

    const-string v3, "2000::/4"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_80} :catch_9f

    .line 314
    invoke-direct {p0}, clearSourceRulesLocked()V

    .line 315
    iget-object v2, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->hideNotificationForLockdown()V

    .line 317
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v2, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 319
    return-void

    .line 291
    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    :catch_96
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockdownVpnTracker"

    const-string v3, "Problem stopping mChkThread"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9f
    move-exception v1

    .line 312
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem setting firewall rules"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 518
    iget-object v2, p0, mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 519
    .local v1, "vpnInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 520
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 522
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "vpnInfo":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_1e
    return-object p1
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string v0, "64:ff9b::"

    .line 265
    .local v0, "clatIpv6addr":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "octets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x4

    if-ge v1, v3, :cond_40

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3d

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 272
    :cond_40
    return-object v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 227
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_3
    invoke-direct {p0}, initLocked()V

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onNetworkInfoChanged()V
    .registers 3

    .prologue
    .line 361
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "onNetworkInfoChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_b
    invoke-direct {p0}, LazyHandleStateChangedLocked()V

    .line 364
    monitor-exit v1

    .line 365
    return-void

    .line 364
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 507
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "onVpnStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_16

    .line 509
    iget v0, p0, mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mErrorCount:I

    .line 511
    :cond_16
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_19
    invoke-direct {p0}, handleStateChangedLocked()V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 322
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_b
    invoke-direct {p0}, shutdownLocked()V

    .line 326
    invoke-direct {p0}, initLocked()V

    .line 327
    invoke-direct {p0}, handleStateChangedLocked()V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 276
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_3
    invoke-direct {p0}, shutdownLocked()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
