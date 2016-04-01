.class public Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.super Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_VPN_ANYCONNECT_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field private static final ACTION_VPN_ANYCONNECT_PACKAGE2:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.samsung43"

.field private static final ACTION_VPN_ANYCONNECT_SERVICE:Ljava/lang/String; = "com.sec.enterprise.VPN_ANYCONNECT"

.field private static final TAG:Ljava/lang/String; = "Cisco_Vpn_Policy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnterpriseVpnReceiver:Landroid/content/BroadcastReceiver;

.field private mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;-><init>()V

    .line 514
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, mProxyConnections:Ljava/util/Map;

    .line 532
    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, mEnterpriseVpnReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 124
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mEnterpriseVpnReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .prologue
    .line 92
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .prologue
    .line 92
    iget-object v0, p0, mProxyConnections:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .prologue
    .line 92
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, addProxyConnectionAsUser(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, removeProxyConnectionAsUser(I)V

    return-void
.end method

.method private addProxyConnectionAsUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 583
    :try_start_0
    const-string v6, "android"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, p1}, createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 584
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 585
    .local v4, "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 586
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 588
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.cisco.anyconnect.vpn.android.samsung43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 589
    :cond_31
    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    invoke-direct {v5, p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 590
    .local v5, "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    iget-object v6, p0, mProxyConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->startConnection()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_46

    .line 598
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    :cond_42
    :goto_42
    return-void

    .line 585
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v2    # "i":I
    .restart local v3    # "p":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 595
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_46
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 624
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_14
    .catchall {:try_start_5 .. :try_end_f} :catchall_22

    move-result-object v0

    .line 630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    :goto_13
    return-object v0

    .line 626
    :catch_14
    move-exception v1

    .line 627
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    const-string v4, "Cisco_Vpn_Policy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    iget-object v0, p0, mContext:Landroid/content/Context;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_22
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 118
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 107
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    if-nez v0, :cond_7

    .line 669
    invoke-direct {p0}, initLooperThread()V

    .line 671
    :cond_7
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    return-object v0
.end method

.method private getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 524
    .local v2, "userId":I
    iget-object v3, p0, mProxyConnections:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    .line 525
    .local v0, "conn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    if-eqz v0, :cond_19

    .line 526
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v1

    .line 528
    :cond_19
    return-object v1
.end method

.method private declared-synchronized initLooperThread()V
    .registers 3

    .prologue
    .line 675
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    if-nez v0, :cond_19

    .line 676
    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    .line 677
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->start()V

    .line 678
    const-string v0, "Cisco_Vpn_Policy"

    const-string/jumbo v1, "init looper thread called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 680
    :cond_19
    monitor-exit p0

    return-void

    .line 675
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeProxyConnectionAsUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 602
    :try_start_0
    const-string v6, "android"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, p1}, createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 603
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 604
    .local v4, "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 605
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 607
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.cisco.anyconnect.vpn.android.samsung43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 608
    :cond_31
    iget-object v6, p0, mProxyConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    .line 609
    .local v5, "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    if-eqz v5, :cond_42

    .line 610
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->stopConnection()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_46

    .line 618
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    :cond_42
    :goto_42
    return-void

    .line 604
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v2    # "i":I
    .restart local v3    # "p":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 615
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "packsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_46
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method


# virtual methods
.method public declared-synchronized getAllEnterpriseVpnConnections(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 289
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 290
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_55

    .line 294
    :try_start_e
    const-string v3, "anyconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 296
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    .line 297
    .local v2, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v2, :cond_2a

    .line 298
    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getAllConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 299
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_31
    .catchall {:try_start_e .. :try_end_28} :catchall_55

    .line 317
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :goto_28
    monitor-exit p0

    return-object v1

    .line 302
    .restart local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_2a
    const/4 v3, 0x1

    const/16 v4, 0xa

    :try_start_2d
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_55

    goto :goto_28

    .line 312
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :catch_31
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getting all vpn connection :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_55

    goto :goto_28

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3

    .line 308
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :cond_58
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_5a
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_31
    .catchall {:try_start_5a .. :try_end_5d} :catchall_55

    goto :goto_28
.end method

.method public getClientCertificates(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 372
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 374
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 375
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 379
    :try_start_e
    const-string v3, "anyconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 380
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    .line 381
    .local v2, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v2, :cond_29

    .line 382
    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 383
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 401
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :goto_28
    return-object v1

    .line 386
    .restart local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_29
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_30

    goto :goto_28

    .line 396
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :catch_30
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getting client certificate list :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v3, 0x3

    invoke-virtual {v1, v6, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_28

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_53
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_55
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_30

    goto :goto_28
.end method

.method public declared-synchronized getEnterpriseVpnConnection(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 193
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 194
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_5f

    .line 198
    :try_start_e
    const-string v3, "anyconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 200
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    .line 201
    .local v2, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v2, :cond_2a

    .line 202
    invoke-interface {v2, p3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 203
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_31
    .catchall {:try_start_e .. :try_end_28} :catchall_5f

    .line 221
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :goto_28
    monitor-exit p0

    return-object v1

    .line 206
    .restart local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_2a
    const/4 v3, 0x1

    const/16 v4, 0xa

    :try_start_2d
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_5f

    goto :goto_28

    .line 216
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :catch_31
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getting vpn connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5e
    .catchall {:try_start_32 .. :try_end_5e} :catchall_5f

    goto :goto_28

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :catchall_5f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 212
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :cond_62
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_64
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_31
    .catchall {:try_start_64 .. :try_end_67} :catchall_5f

    goto :goto_28
.end method

.method public installClientCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "vpnType"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 327
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 329
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 330
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 332
    if-eqz p3, :cond_16

    if-nez p4, :cond_1c

    .line 333
    :cond_16
    const/16 v3, 0x9

    invoke-virtual {v1, v6, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 363
    :goto_1b
    return-object v1

    .line 340
    :cond_1c
    :try_start_1c
    const-string v3, "anyconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 342
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    .line 343
    .local v2, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v2, :cond_5e

    .line 344
    invoke-interface {v2, p3, p4}, Landroid/app/enterprise/IEnterpriseVpnInterface;->installCertificate([BLjava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 345
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_1b

    .line 358
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :catch_3b
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installing client certificate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v3, 0x3

    invoke-virtual {v1, v6, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1b

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_5e
    const/4 v3, 0x1

    const/16 v4, 0xa

    :try_start_61
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1b

    .line 354
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_65
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6a} :catch_3b

    goto :goto_1b
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 406
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 410
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 418
    return-void
.end method

.method public declared-synchronized removeEnterpriseVpnConnection(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 233
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 234
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 236
    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 237
    :cond_1a
    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_92

    .line 278
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v2

    .line 244
    :cond_22
    :try_start_22
    const-string v5, "anyconnect"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 246
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v3

    .line 247
    .local v3, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v3, :cond_95

    .line 248
    invoke-interface {v3, p3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->removeConnection(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 249
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 251
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 252
    .local v4, "userId":I
    if-nez v4, :cond_20

    .line 253
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_64
    .catchall {:try_start_22 .. :try_end_4d} :catchall_92

    .line 255
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_4d
    const-string/jumbo v5, "vpn"

    const-string/jumbo v6, "removeEnterpriseVpnConnection"

    invoke-virtual {v1, v5, v6, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "Cisco_Vpn_Policy"

    const-string/jumbo v6, "removeEnterpriseVpnConnection calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5e} :catch_5f
    .catchall {:try_start_4d .. :try_end_5e} :catchall_92

    goto :goto_20

    .line 257
    :catch_5f
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_92

    goto :goto_20

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    .end local v4    # "userId":I
    :catch_64
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_65
    const-string v5, "Cisco_Vpn_Policy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removing vpn connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_91
    .catchall {:try_start_65 .. :try_end_91} :catchall_92

    goto :goto_20

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_92
    move-exception v5

    monitor-exit p0

    throw v5

    .line 263
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .restart local v3    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_95
    const/4 v5, 0x1

    const/16 v6, 0xa

    :try_start_98
    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_20

    .line 269
    .end local v3    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_9c
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_64
    .catchall {:try_start_98 .. :try_end_a1} :catchall_92

    goto/16 :goto_20
.end method

.method public declared-synchronized setEnterpriseVpnConnection(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "eVpn"    # Landroid/app/enterprise/EnterpriseVpnConnection;
    .param p3, "oldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceEnterpriseVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 147
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 148
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 150
    if-nez p2, :cond_1c

    .line 151
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_6d

    .line 181
    :goto_1a
    monitor-exit p0

    return-object v1

    .line 158
    :cond_1c
    :try_start_1c
    const-string v3, "anyconnect"

    iget-object v4, p2, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 160
    invoke-direct {p0, p1}, getService(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    .line 161
    .local v2, "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    if-eqz v2, :cond_70

    .line 162
    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3d
    .catchall {:try_start_1c .. :try_end_3c} :catchall_6d

    goto :goto_1a

    .line 176
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :catch_3d
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting vpn connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_6c
    .catchall {:try_start_3e .. :try_end_6c} :catchall_6d

    goto :goto_1a

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_6d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 166
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .restart local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_70
    const/4 v3, 0x1

    const/16 v4, 0xa

    :try_start_73
    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1a

    .line 172
    .end local v2    # "service":Landroid/app/enterprise/IEnterpriseVpnInterface;
    :cond_77
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7c} :catch_3d
    .catchall {:try_start_73 .. :try_end_7c} :catchall_6d

    goto :goto_1a
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 414
    return-void
.end method
