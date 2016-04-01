.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String;

.field private static final IP6TABLES:Ljava/lang/String; = "/system/bin/ip6tables"

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field private static allIpsInfo:[Ljava/net/InetAddress;

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z

.field private static mHostnameToIpListMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mIpToHostnameMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIsHostnameHashMapCreated:Z

.field private static mMigrationNeeded:Z


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

.field private mCon:Landroid/net/IConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

.field private mIsOnline:Z

.field private final mLocker:Ljava/lang/Object;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mService:Lcom/sec/enterprise/firewall/IFirewall;

.field private mUserManager:Landroid/os/UserManager;

.field private marketChainsCreated:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string/jumbo v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string/jumbo v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string/jumbo v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, iptablesChains:[Ljava/lang/String;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .line 187
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 134
    iput-boolean v4, p0, mIsOnline:Z

    .line 142
    const-string v2, "android.intent.action.USER_ADDED"

    iput-object v2, p0, ACTION_USER_ADDED:Ljava/lang/String;

    .line 231
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2071
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLocker:Ljava/lang/Object;

    .line 206
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 207
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, mUserManager:Landroid/os/UserManager;

    .line 208
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    iput-object v2, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 210
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 211
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, mHostnameToIpListMapping:Landroid/util/SparseArray;

    .line 220
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, mIpToHostnameMapping:Landroid/util/SparseArray;

    .line 221
    sput-boolean v4, mIsHostnameHashMapCreated:Z

    .line 222
    const/4 v2, 0x1

    sput-boolean v2, mMigrationNeeded:Z

    .line 225
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FirewallPolicyService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V

    iput-object v2, p0, mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 124
    invoke-direct {p0}, applyNetworkForMarketOnBoot()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 124
    sget-boolean v0, mIsHostnameHashMapCreated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, loadHostnameMapFromDb(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 124
    invoke-direct {p0}, getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 124
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 124
    invoke-direct {p0}, refreshProxyRules()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Ljava/lang/Process;

    .prologue
    .line 124
    invoke-direct {p0, p1}, getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 1
    .param p0, "x0"    # [Ljava/net/InetAddress;

    .prologue
    .line 124
    sput-object p0, allIpsInfo:[Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 124
    iget-object v0, p0, mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v5, 0x0

    .line 1021
    const-string v4, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRulesToDb enter containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1025
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 1026
    .local v1, "index":I
    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1027
    add-int/lit8 v1, v1, 0x1

    .line 1028
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1029
    .local v3, "rule":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4, p3}, checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1032
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "cv":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1033
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    const-string/jumbo v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    if-eqz p5, :cond_94

    .line 1037
    const-string/jumbo v4, "enabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :goto_78
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_3d

    move v4, v5

    .line 1047
    .end local v3    # "rule":Ljava/lang/String;
    :goto_93
    return v4

    .line 1039
    .restart local v3    # "rule":Ljava/lang/String;
    :cond_94
    const-string/jumbo v4, "enabled"

    const-string/jumbo v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 1047
    .end local v3    # "rule":Ljava/lang/String;
    :cond_9e
    const/4 v4, 0x1

    goto :goto_93
.end method

.method private addToNewFirewall(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Z
    .registers 14
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    .prologue
    const/4 v8, 0x0

    .line 388
    invoke-direct {p0, p1, p2, p3}, resolveRule(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Ljava/util/ArrayList;

    move-result-object v6

    .line 389
    .local v6, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 390
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    if-nez v6, :cond_d

    .line 413
    :cond_c
    :goto_c
    return v8

    .line 393
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 395
    .local v5, "ruleArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_25

    .line 396
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/firewall/FirewallRule;

    aput-object v7, v5, v2

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 398
    :cond_25
    invoke-direct {p0}, getFirewallService()Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 401
    :try_start_2b
    iget-object v7, p0, mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

    invoke-interface {v7, v0, v5}, Lcom/sec/enterprise/firewall/IFirewall;->addRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_49

    move-result-object v3

    .line 406
    .local v3, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v4, 0x1

    .line 407
    .local v4, "ret":Z
    const/4 v2, 0x0

    :goto_33
    array-length v7, v3

    if-ge v2, v7, :cond_50

    .line 408
    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v7, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    const/4 v7, 0x1

    :goto_45
    and-int/2addr v4, v7

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 402
    .end local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v4    # "ret":Z
    :catch_49
    move-exception v1

    .line 403
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v4    # "ret":Z
    :cond_4e
    move v7, v8

    .line 408
    goto :goto_45

    :cond_50
    move v8, v4

    .line 410
    goto :goto_c
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;I)V
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 1490
    const/4 v13, 0x0

    .line 1491
    .local v13, "containerziedUid":I
    const/4 v15, 0x0

    .line 1493
    .local v15, "appUids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, getAppUids(Ljava/lang/String;I)[I

    move-result-object v15

    .line 1495
    if-nez v15, :cond_f

    .line 1517
    :cond_e
    :goto_e
    return-void

    .line 1498
    :cond_f
    const/4 v4, 0x0

    aget v13, v15, v4

    .line 1500
    if-gez v13, :cond_1c

    .line 1501
    const-string v4, "FirewallPolicy"

    const-string v5, "Package name not found in the container"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1505
    :cond_1c
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1506
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1508
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v4, "filter"

    const-string/jumbo v5, "samsung_market_policy"

    const-string/jumbo v6, "out"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string/jumbo v11, "data"

    const/4 v12, 0x1

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1512
    .local v3, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1513
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1514
    if-eqz v16, :cond_e

    .line 1515
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    goto :goto_e
.end method

.method private declared-synchronized applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1425
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v4}, getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1426
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, createChainForMarket(I)V

    .line 1429
    sget-object v0, MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v2, :cond_3e

    aget-object v3, v0, v1

    .line 1430
    .local v3, "marketPackage":Ljava/lang/String;
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v3, v5}, applyMarketIptablesRules(ILjava/lang/String;I)V

    .line 1429
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1433
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "marketPackage":Ljava/lang/String;
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    if-nez v4, :cond_3e

    .line 1434
    sget-object v0, MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2b
    if-ge v1, v2, :cond_39

    aget-object v3, v0, v1

    .line 1435
    .restart local v3    # "marketPackage":Ljava/lang/String;
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v3, v5}, removeMarketIptablesRules(ILjava/lang/String;I)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1437
    .end local v3    # "marketPackage":Ljava/lang/String;
    :cond_39
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, removeChainForMarket(I)V
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_40

    .line 1439
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3e
    monitor-exit p0

    return-void

    .line 1425
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized applyNetworkForMarketOnBoot()V
    .registers 12

    .prologue
    .line 1442
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1443
    .local v1, "cvSelection":Landroid/content/ContentValues;
    const-string v8, "MarketNetworkType"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1444
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "RESTRICTION"

    const-string v10, "adminUid"

    invoke-virtual {v8, v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 1447
    .local v6, "listAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1448
    .local v5, "list":I
    const/4 v8, 0x0

    invoke-direct {p0, v8}, createChainForMarket(I)V

    .line 1451
    sget-object v0, MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_36
    if-ge v3, v4, :cond_1e

    aget-object v7, v0, v3

    .line 1452
    .local v7, "marketPackage":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v8, v7, v5}, applyMarketIptablesRules(ILjava/lang/String;I)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_43

    .line 1451
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 1455
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":I
    .end local v7    # "marketPackage":Ljava/lang/String;
    :cond_41
    monitor-exit p0

    return-void

    .line 1442
    .end local v1    # "cvSelection":Landroid/content/ContentValues;
    .end local v6    # "listAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_43
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 808
    const-string v2, "FirewallPolicy"

    const-string v6, "applyProxyRules..."

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-direct/range {p0 .. p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 810
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 811
    .local v5, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 812
    .local v3, "containerId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, getLastUidForProxy(II)I

    move-result v16

    .line 813
    .local v16, "enabledUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v4, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    move/from16 v0, v16

    if-ne v0, v5, :cond_35

    .line 817
    const/4 v7, 0x1

    .line 821
    .local v7, "enabled":Z
    :goto_23
    if-eqz p2, :cond_33

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_33

    if-eqz p3, :cond_33

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_37

    .line 822
    :cond_33
    const/4 v2, 0x0

    .line 861
    :goto_34
    return v2

    .line 819
    .end local v7    # "enabled":Z
    :cond_35
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto :goto_23

    .line 825
    :cond_37
    :try_start_37
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 826
    .local v17, "jsonRule":Lorg/json/JSONObject;
    const-string/jumbo v2, "host"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    const-string/jumbo v2, "port"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_55} :catch_77

    .line 833
    .end local v17    # "jsonRule":Lorg/json/JSONObject;
    :goto_55
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_84

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 834
    invoke-direct/range {v2 .. v7}, addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 836
    if-eqz v7, :cond_80

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 838
    invoke-direct/range {v8 .. v14}, applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_34

    .line 829
    :catch_77
    move-exception v15

    .line 830
    .local v15, "e":Lorg/json/JSONException;
    const-string v2, "FirewallPolicy"

    const-string v6, "JSONException"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 841
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_80
    const/4 v2, 0x1

    goto :goto_34

    .line 844
    :cond_82
    const/4 v2, 0x0

    goto :goto_34

    .line 847
    :cond_84
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_aa

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v4, v5, v1}, removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 850
    if-eqz v7, :cond_a6

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 852
    invoke-direct/range {v8 .. v14}, applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_34

    .line 855
    :cond_a6
    const/4 v2, 0x1

    goto :goto_34

    .line 858
    :cond_a8
    const/4 v2, 0x0

    goto :goto_34

    .line 861
    :cond_aa
    const/4 v2, 0x0

    goto :goto_34
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 22
    .param p1, "containerId"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "proxyType"    # Ljava/lang/String;
    .param p6, "adminUid"    # I

    .prologue
    .line 868
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v14, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 871
    .local v13, "appUids":[I
    sget-boolean v2, isIptChainsCreated:Z

    if-nez v2, :cond_d

    .line 872
    invoke-direct/range {p0 .. p1}, createIptablesChains(I)V

    .line 875
    :cond_d
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz p3, :cond_1d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 876
    :cond_1d
    const/4 v2, 0x0

    .line 902
    :goto_1e
    return v2

    .line 879
    :cond_1f
    const-string v6, ""

    .line 880
    .local v6, "protocolPort":Ljava/lang/String;
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 881
    const-string v6, "80"

    .line 884
    :cond_2e
    const-string v2, "*"

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, getAppUids(Ljava/lang/String;I)[I

    move-result-object v13

    .line 885
    if-nez v13, :cond_3a

    .line 886
    const/4 v2, 0x0

    goto :goto_1e

    .line 888
    :cond_3a
    new-instance v12, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v12}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 889
    .local v12, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 890
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 891
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 892
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v2, "nat"

    const/4 v3, 0x3

    invoke-direct {p0, v3}, getChain(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "out"

    const-string v5, ""

    const-string/jumbo v7, "tcp"

    const-string/jumbo v8, "remote"

    const-string v9, ""

    const/4 v10, 0x0

    aget v11, v13, v10

    move/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 896
    .local v1, "proxyRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    iget-object v2, p0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v14

    .line 898
    if-eqz v14, :cond_84

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_84

    .line 899
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    :cond_84
    const/4 v2, 0x1

    goto :goto_1e
.end method

.method private changeRuleIp(Lcom/sec/enterprise/firewall/FirewallRule;Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule;
    .registers 6
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "IpAddress"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallRule;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 456
    .local v0, "IpRule":Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_25
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 458
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 460
    :cond_32
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 461
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 463
    :cond_3f
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 464
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 466
    :cond_4c
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    :cond_64
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 468
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 470
    :cond_71
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 471
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 474
    :cond_7e
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 475
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 477
    :cond_8b
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 478
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 480
    :cond_a4
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 481
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 483
    :cond_bd
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 484
    return-object v0
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1200
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1201
    const-string/jumbo v2, "rules =? "

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v2, "type =? "

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const-string/jumbo v4, "rules"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, "returnValue":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1208
    const/4 v2, 0x1

    .line 1210
    :goto_2c
    return v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 934
    if-nez p2, :cond_3

    .line 944
    :goto_2
    return-void

    .line 937
    :cond_3
    if-nez p3, :cond_32

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/ip6tables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 942
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1105
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    .line 1110
    const/4 v1, 0x1

    return v1
.end method

.method private convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v2, ""

    .line 341
    .local v2, "ruleStr":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "reroute"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 343
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "ruleType":Ljava/lang/String;
    if-eqz v3, :cond_6b

    const-string/jumbo v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "originPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "destHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "destPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_69
    :goto_69
    move-object v4, v2

    .line 384
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_6a
    return-object v4

    .line 348
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "ruleType":Ljava/lang/String;
    :cond_6b
    if-eqz v3, :cond_69

    const-string v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "originPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "destHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "destPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_69

    .line 356
    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_df
    const-string v4, "allow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    const-string/jumbo v4, "deny"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    .line 357
    :cond_f0
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3    # "ruleType":Ljava/lang/String;
    if-eqz v3, :cond_13a

    const-string/jumbo v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_69

    .line 361
    :cond_13a
    if-eqz v3, :cond_69

    const-string v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 362
    const-string/jumbo v4, "deny"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_69

    .line 371
    :cond_1a7
    const-string v4, "allow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_69

    .line 378
    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_1f8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_21c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_21c} :catch_21f

    move-result-object v2

    goto/16 :goto_69

    .line 380
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_21f
    move-exception v0

    .line 381
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "FirewallPolicy"

    const-string v5, "JSONException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x0

    goto/16 :goto_6a
.end method

.method private convertRule(Landroid/content/ContentValues;)Z
    .registers 9
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 319
    const-string v6, "adminUid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 320
    .local v3, "uid":I
    const-string/jumbo v6, "type"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v6, "rules"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "rule":Ljava/lang/String;
    const-string v6, "allow"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string/jumbo v6, "deny"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string/jumbo v6, "reroute"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string/jumbo v6, "redirect_exception"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 323
    :cond_3d
    invoke-direct {p0, v0, v2}, convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "strRule":Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 325
    invoke-direct {p0, v2}, getRuletype(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v6

    invoke-direct {p0, v1, v3, v6}, addToNewFirewall(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 326
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 335
    .end local v1    # "strRule":Ljava/lang/String;
    :cond_54
    :goto_54
    return v4

    .restart local v1    # "strRule":Ljava/lang/String;
    :cond_55
    move v4, v5

    .line 329
    goto :goto_54

    :cond_57
    move v4, v5

    .line 332
    goto :goto_54
.end method

.method private createChainForMarket(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 1459
    iget v1, p0, marketChainsCreated:I

    if-nez v1, :cond_2a

    .line 1460
    const-string/jumbo v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1461
    const-string/jumbo v1, "samsung_market_policy-output"

    invoke-direct {p0, p1, v1}, createSingleIp6tablesChain(ILjava/lang/String;)Ljava/lang/String;

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    const-string v1, "/system/bin/ip6tables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    invoke-direct {p0, p1, v0}, runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1466
    iget v1, p0, marketChainsCreated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, marketChainsCreated:I

    .line 1470
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_29
    :goto_29
    return-void

    .line 1467
    :cond_2a
    iget v1, p0, marketChainsCreated:I

    if-lez v1, :cond_29

    .line 1468
    iget v1, p0, marketChainsCreated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, marketChainsCreated:I

    goto :goto_29
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1941
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

    .line 1947
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1949
    :goto_13
    return-object v0

    .line 1943
    :catch_14
    move-exception v1

    .line 1944
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    const-string v4, "FirewallPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1945
    iget-object v0, p0, mContext:Landroid/content/Context;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 1947
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_22
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private createIptablesChains(I)V
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    const/4 v3, 0x3

    .line 948
    sget-object v1, iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "nat"

    invoke-direct {p0, p1, v1, v2}, createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-direct {p0, p1, v0}, runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 953
    const/4 v1, 0x1

    sput-boolean v1, isIptChainsCreated:Z

    .line 954
    return-void
.end method

.method private createSingleIp6tablesChain(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/ip6tables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/ip6tables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 957
    if-nez p3, :cond_30

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    :goto_2f
    return-object v0

    .line 961
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 906
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 907
    .local v9, "enabledUid":I
    const-string v0, "FirewallPolicy"

    const-string/jumbo v2, "disableProxyOnIptables"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 909
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 910
    .local v6, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 911
    .local v1, "containerId":I
    if-ne v9, v6, :cond_55

    .line 913
    const-string/jumbo v0, "proxy"

    invoke-direct {p0, v1, v9, v0}, getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 915
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 916
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 917
    .local v11, "ruleUid":I
    invoke-direct {p0, v10}, removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 918
    .local v12, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 919
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_55

    .line 920
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    .line 921
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 923
    .local v8, "args":[Ljava/lang/String;
    aget-object v2, v8, v3

    aget-object v3, v8, v13

    const/4 v4, 0x2

    const-string/jumbo v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 930
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleUid":I
    .end local v12    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_55
    return v13
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1276
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1278
    return-object p1
.end method

.method private getAllAdmins()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v0, "allAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 1217
    .local v1, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    .line 1218
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1220
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1221
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1224
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_34
    return-object v0
.end method

.method private getAllUsers()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    const/4 v1, 0x0

    .line 1229
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1230
    .local v2, "token":J
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1231
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v5, "userListList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1233
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1236
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1237
    return-object v5
.end method

.method private getAppUid(Ljava/lang/String;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1328
    const/4 v1, -0x1

    .line 1329
    .local v1, "appUid":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1331
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1332
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_10

    move v4, v1

    .line 1337
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_f
    return v4

    .line 1333
    :catch_10
    move-exception v2

    .line 1334
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const/4 v4, -0x1

    goto :goto_f
.end method

.method private getAppUidForUser(Ljava/lang/String;I)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1341
    const/4 v1, -0x1

    .line 1342
    .local v1, "appUid":I
    const/4 v2, 0x0

    .line 1344
    .local v2, "ctx":Landroid/content/Context;
    const-string v5, "android"

    invoke-direct {p0, v5, v6, p2}, createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 1345
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1347
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_e
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1348
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_15

    .line 1352
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_14
    return v1

    .line 1349
    :catch_15
    move-exception v3

    .line 1350
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private getAppUids(Ljava/lang/String;I)[I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1356
    const/4 v1, 0x0

    .line 1357
    .local v1, "appUids":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1359
    .local v2, "token":J
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1360
    :cond_1f
    new-array v1, v6, [I

    .line 1361
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v1, v5

    .line 1371
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    return-object v1

    .line 1363
    :cond_2b
    invoke-direct {p0, p1}, getAppUid(Ljava/lang/String;)I

    move-result v0

    .line 1364
    .local v0, "appUid":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_38

    const/4 v4, -0x1

    if-eq v0, v4, :cond_27

    .line 1366
    :cond_38
    new-array v1, v6, [I

    .line 1367
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, getAppUidForUser(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_27
.end method

.method private getChain(I)Ljava/lang/String;
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 1381
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 1383
    :cond_b
    sget-object v0, iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1385
    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    goto :goto_f
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 10
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1244
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_72
    .catchall {:try_start_6 .. :try_end_14} :catchall_5f

    .line 1246
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_45

    .line 1247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_31
    .catchall {:try_start_14 .. :try_end_30} :catchall_6f

    goto :goto_14

    .line 1249
    .end local v3    # "line":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object v1, v2

    .line 1250
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_33
    :try_start_33
    const-string v5, "FirewallPolicy"

    const-string/jumbo v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_5f

    .line 1253
    if-eqz v1, :cond_40

    .line 1254
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_56

    .line 1260
    .end local v0    # "e":Ljava/io/IOException;
    :cond_40
    :goto_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1253
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_45
    if-eqz v2, :cond_4a

    .line 1254
    :try_start_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    move-object v1, v2

    .line 1258
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_40

    .line 1256
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    .line 1257
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1259
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_40

    .line 1256
    .end local v3    # "line":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 1257
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1252
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5f
    move-exception v5

    .line 1253
    :goto_60
    if-eqz v1, :cond_65

    .line 1254
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 1258
    :cond_65
    :goto_65
    throw v5

    .line 1256
    :catch_66
    move-exception v0

    .line 1257
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "FirewallPolicy"

    const-string v7, "IOException on getCommandResult"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 1252
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_6f
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_60

    .line 1249
    :catch_72
    move-exception v0

    goto :goto_33
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 3

    .prologue
    .line 163
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 165
    iget-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_12

    .line 166
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    .line 169
    :cond_12
    iget-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1264
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 1265
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1268
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallService()Lcom/sec/enterprise/firewall/IFirewall;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

    if-nez v0, :cond_11

    .line 175
    const-string/jumbo v0, "firewall"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

    .line 178
    :cond_11
    iget-object v0, p0, mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

    return-object v0
.end method

.method private getLastUidForProxy(II)I
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1155
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1156
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1157
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1159
    const-string/jumbo v0, "type =? "

    const-string/jumbo v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string/jumbo v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1167
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1168
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1169
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_74

    move-result-object v10

    .line 1175
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_4b
    if-eqz v7, :cond_50

    .line 1176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_50
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1172
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_6e
    const/4 v0, -0x1

    :try_start_6f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_74

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_4b

    .line 1175
    .end local v10    # "uid":Ljava/lang/Integer;
    :catchall_74
    move-exception v0

    if-eqz v7, :cond_7a

    .line 1176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0
.end method

.method private getNetworkAppsList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1868
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1869
    .local v6, "token":J
    iget-object v5, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    .line 1870
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    if-eqz v1, :cond_3b

    .line 1872
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1873
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v5, "android.permission.INTERNET"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1f

    .line 1874
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1878
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3b
    return-object v4
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .prologue
    .line 1981
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1982
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 1983
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_13

    .line 1984
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    .line 1987
    :cond_13
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 20
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRulesFromDb.. containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1074
    .local v6, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1075
    .local v8, "userId":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 1077
    .local v5, "returnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "rules"

    aput-object v3, v5, v2

    .line 1078
    const/4 v2, 0x1

    const-string v3, "adminUid"

    aput-object v3, v5, v2

    .line 1079
    const-string/jumbo v2, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v2, "adminUid =? "

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1084
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1086
    .local v9, "adminUid":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v12, "resultset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_bf

    .line 1088
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1089
    :goto_7b
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 1090
    const-string/jumbo v2, "rules"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1092
    .local v11, "jsonString":Ljava/lang/String;
    const-string v2, "adminUid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1093
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1094
    .local v13, "ruleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7b

    .line 1098
    .end local v11    # "jsonString":Ljava/lang/String;
    .end local v13    # "ruleStr":Ljava/lang/String;
    :cond_bc
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1100
    :cond_bf
    return-object v12
.end method

.method private getRuletype(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "allow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 308
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    .line 314
    :goto_a
    return-object v0

    .line 309
    :cond_b
    const-string/jumbo v0, "deny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 310
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    goto :goto_a

    .line 311
    :cond_17
    const-string/jumbo v0, "reroute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 312
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    goto :goto_a

    .line 314
    :cond_23
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    goto :goto_a
.end method

.method private getService()Lcom/sec/enterprise/firewall/IFirewall;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    if-nez v0, :cond_11

    .line 489
    const-string/jumbo v0, "firewall"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    .line 492
    :cond_11
    iget-object v0, p0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    return-object v0
.end method

.method private getUidFromRule(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1195
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDomain(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1741
    const/4 v5, 0x1

    .line 1742
    .local v5, "ret":Z
    invoke-direct {p0, p1}, validateDomain(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 1743
    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, "hosts":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-gt v6, v7, :cond_28

    .line 1745
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_13
    if-ge v3, v4, :cond_28

    aget-object v1, v0, v3

    .line 1746
    .local v1, "hostPiece":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1747
    invoke-direct {p0, v1, p2}, validateIp(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x1

    :goto_22
    and-int/2addr v5, v6

    .line 1745
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1747
    :cond_26
    const/4 v6, 0x0

    goto :goto_22

    .line 1750
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "hostPiece":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_28
    return v5
.end method

.method private isIpv6(Ljava/lang/String;)Z
    .registers 9
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1963
    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1964
    .local v2, "hosts":[Ljava/lang/String;
    const/4 v4, 0x1

    .line 1965
    .local v4, "isIpv6":Z
    invoke-direct {p0, p1}, validateDomain(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1966
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_10
    if-ge v3, v5, :cond_1e

    aget-object v1, v0, v3

    .line 1967
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, parseNumericAddressNoThrow(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1968
    const/4 v4, 0x0

    .line 1966
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .end local v1    # "host":Ljava/lang/String;
    :cond_1e
    move v6, v4

    .line 1973
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_1f
    return v6

    :cond_20
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method private loadHostnameMapFromDb(IZ)V
    .registers 12
    .param p1, "adminUid"    # I
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2030
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2031
    .local v4, "selectionValues":Landroid/content/ContentValues;
    if-nez p2, :cond_24

    .line 2032
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2033
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2034
    sget-object v6, mIpToHostnameMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2037
    :cond_24
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "FirewallHostnames"

    sget-object v8, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_HOSTNAMES_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 2041
    .local v5, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_ba

    .line 2042
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2043
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "hostName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, "hostname":Ljava/lang/String;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2045
    .local v3, "ip":Ljava/lang/String;
    const-string v6, "adminUid"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2047
    if-eqz p2, :cond_9c

    .line 2048
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6c

    .line 2049
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2053
    :cond_6c
    sget-object v6, mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7e

    .line 2054
    sget-object v6, mIpToHostnameMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2057
    :cond_7e
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9c

    .line 2058
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    :cond_9c
    sget-object v6, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    sget-object v6, mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_34

    .line 2067
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ip":Ljava/lang/String;
    :cond_ba
    const/4 v6, 0x1

    sput-boolean v6, mIsHostnameHashMapCreated:Z

    .line 2068
    return-void
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Z
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1992
    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_25

    .line 1993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1995
    :cond_25
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    .line 1996
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v4, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v4, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 1997
    const/4 v0, 0x0

    .line 1999
    .local v0, "addresses":[Ljava/net/InetAddress;
    :try_start_2f
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v1, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_35
    .catch Landroid/system/GaiException; {:try_start_2f .. :try_end_35} :catch_41

    move-result-object v0

    .line 2002
    :goto_36
    if-eqz v0, :cond_3f

    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_3f

    .line 2006
    :goto_3e
    return v2

    :cond_3f
    move v2, v3

    goto :goto_3e

    .line 2000
    :catch_41
    move-exception v4

    goto :goto_36
.end method

.method private refreshProxyRules()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 698
    invoke-direct {p0}, getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    .line 700
    .local v2, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    sget-object v5, iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string/jumbo v6, "nat"

    invoke-direct {p0, v4, v5, v6}, cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_12
    const/4 v4, 0x2

    if-ge v0, v4, :cond_36

    .line 702
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 703
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, getLastUidForProxy(II)I

    move-result v1

    .line 706
    .local v1, "enabledUid":I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_30

    .line 709
    invoke-virtual {p0, v0, v7, v1}, enableProxyWithUid(IZI)Z

    .line 702
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 701
    .end local v1    # "enabledUid":I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 713
    .end local v3    # "x":I
    :cond_36
    return v7
.end method

.method private removeChainForMarket(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1474
    iget v1, p0, marketChainsCreated:I

    if-ne v1, v2, :cond_2a

    .line 1475
    const-string/jumbo v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -D OUTPUT -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    const-string v1, "/system/bin/ip6tables -D OUTPUT -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-direct {p0, p1, v0}, runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1480
    const-string v1, "/system/bin/iptables -X samsung_market_policy-output"

    invoke-direct {p0, v1}, runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1481
    iget v1, p0, marketChainsCreated:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, marketChainsCreated:I

    .line 1485
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_29
    :goto_29
    return-void

    .line 1482
    :cond_2a
    iget v1, p0, marketChainsCreated:I

    if-le v1, v2, :cond_29

    .line 1483
    iget v1, p0, marketChainsCreated:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, marketChainsCreated:I

    goto :goto_29
.end method

.method private removeMarketIptablesRules(ILjava/lang/String;I)V
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 1523
    const/4 v13, 0x0

    .line 1524
    .local v13, "containerziedUid":I
    const/4 v15, 0x0

    .line 1526
    .local v15, "appUids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, getAppUids(Ljava/lang/String;I)[I

    move-result-object v15

    .line 1528
    if-nez v15, :cond_f

    .line 1553
    :goto_e
    return-void

    .line 1531
    :cond_f
    const/4 v4, 0x0

    aget v13, v15, v4

    .line 1533
    if-gez v13, :cond_1c

    .line 1534
    const-string v4, "FirewallPolicy"

    const-string v5, "Package name not found in the container"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1538
    :cond_1c
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1539
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1541
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v4, "filter"

    const-string/jumbo v5, "samsung_market_policy"

    const-string/jumbo v6, "out"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string/jumbo v11, "data"

    const/4 v12, 0x2

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1545
    .local v3, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1546
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_68

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1548
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1552
    :goto_5f
    const-string v4, "FirewallPolicy"

    const-string/jumbo v5, "removeMarketIptablesRules - END"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1550
    :cond_68
    const-string v4, "FirewallPolicy"

    const-string/jumbo v5, "removeMarketIptablesRules() : createIptCommands has failed."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private removeRuleUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1191
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeRuleUid(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1185
    .local v2, "rule":Ljava/lang/String;
    invoke-direct {p0, v2}, removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1187
    .end local v2    # "rule":Ljava/lang/String;
    :cond_1d
    return-object v1
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .registers 13
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v4, 0x1

    .line 1052
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1053
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1054
    .local v2, "ret":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1055
    .local v3, "rule":Lorg/json/JSONObject;
    const-string v5, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string/jumbo v5, "rules"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, p1, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v2

    .line 1062
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_b

    .line 1064
    .end local v3    # "rule":Lorg/json/JSONObject;
    :cond_44
    if-ne v2, v4, :cond_47

    .line 1067
    :goto_46
    return v4

    :cond_47
    const/4 v4, 0x0

    goto :goto_46
.end method

.method private resolveRule(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Ljava/util/ArrayList;
    .registers 18
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/enterprise/firewall/FirewallRule$RuleType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/firewall/FirewallRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v10, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 421
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz p1, :cond_53

    .line 422
    const-string v12, ":"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 423
    .local v11, "splitted":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v1, v11, v12

    .line 428
    .local v1, "address":Ljava/lang/String;
    :try_start_17
    const-string v12, "*"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7e

    invoke-static {v1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateHostName(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 429
    const/4 v7, 0x0

    .line 430
    .local v7, "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, getIpList(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v7

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v4, "generalRule":Ljava/lang/StringBuilder;
    const-string v12, "*"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_35
    array-length v12, v11

    if-ge v8, v12, :cond_55

    .line 434
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v11, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 425
    .end local v1    # "address":Ljava/lang/String;
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    .end local v11    # "splitted":[Ljava/lang/String;
    :cond_53
    const/4 v10, 0x0

    .line 451
    .end local v10    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    :cond_54
    :goto_54
    return-object v10

    .line 436
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v4    # "generalRule":Ljava/lang/StringBuilder;
    .restart local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "j":I
    .restart local v10    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .restart local v11    # "splitted":[Ljava/lang/String;
    :cond_55
    if-eqz v7, :cond_7c

    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/sec/enterprise/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    .line 438
    .local v9, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 439
    .local v6, "ip":Ljava/lang/String;
    invoke-direct {p0, v9, v6}, changeRuleIp(Lcom/sec/enterprise/firewall/FirewallRule;Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 448
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "ip":Ljava/lang/String;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    .end local v9    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :catch_79
    move-exception v3

    .line 449
    .local v3, "e":Ljava/security/InvalidParameterException;
    const/4 v10, 0x0

    goto :goto_54

    .line 442
    .end local v3    # "e":Ljava/security/InvalidParameterException;
    .restart local v4    # "generalRule":Ljava/lang/StringBuilder;
    .restart local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "j":I
    :cond_7c
    const/4 v10, 0x0

    goto :goto_54

    .line 445
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    :cond_7e
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/sec/enterprise/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    .line 446
    .restart local v9    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/security/InvalidParameterException; {:try_start_17 .. :try_end_87} :catch_79

    goto :goto_54
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 975
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .registers 9
    .param p1, "containerId"    # I
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1f

    .line 982
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 983
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0, p3, p4}, runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 986
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1f
    return-object v2
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 990
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isHostName"    # Z
    .param p3, "type"    # I

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .registers 15
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isHostName"    # Z
    .param p3, "type"    # I
    .param p4, "pending"    # Z

    .prologue
    .line 1001
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v4, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "commandArray":[Ljava/lang/String;
    const-string v8, ""

    .line 1004
    .local v8, "result":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_10
    if-ge v5, v6, :cond_1a

    aget-object v2, v0, v5

    .line 1005
    .local v2, "commandArg":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1007
    .end local v2    # "commandArg":Ljava/lang/String;
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v9, p0, mIsOnline:Z

    if-eqz v9, :cond_41

    .line 1008
    :cond_20
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1009
    .local v7, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "command"

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v9, "type"

    invoke-virtual {v1, v9, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1013
    iget-object v9, p0, mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    if-eqz v9, :cond_41

    .line 1014
    iget-object v9, p0, mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1016
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_41
    return-object v8
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1114
    const-string v7, "FirewallPolicy"

    const-string/jumbo v8, "setProxyRulesEnableOnDb..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "adminUid =? "

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v7, "type =? "

    const-string/jumbo v8, "proxy"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string/jumbo v7, "enabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1126
    .local v4, "timestamp":J
    const-string/jumbo v7, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "FirewallTable"

    invoke-virtual {v7, v8, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v6

    .line 1128
    .local v6, "updated":I
    if-lez v6, :cond_b2

    .line 1130
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    .local v1, "helpCv":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1132
    .local v2, "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "enabled"

    const-string/jumbo v8, "false"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminUid IN (SELECT adminUid  from admin where containerId=? AND userID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v7, "adminUid !=? "

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string/jumbo v7, "enabled =? "

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string/jumbo v7, "type =? "

    const-string/jumbo v8, "proxy"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "FirewallTable"

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1150
    const/4 v7, 0x1

    .end local v1    # "helpCv":Landroid/content/ContentValues;
    .end local v2    # "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_b1
    return v7

    .line 1148
    :cond_b2
    const/4 v7, 0x0

    goto :goto_b1
.end method

.method private updateHostnameIps(Ljava/lang/String;I)V
    .registers 15
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    .line 2074
    iget-object v10, p0, mLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 2075
    :try_start_3
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    .line 2076
    .local v3, "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v9, v11

    invoke-virtual {v3, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_8c

    .line 2078
    :goto_11
    :try_start_11
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->isFinished()Z

    move-result v9

    if-nez v9, :cond_21

    .line 2079
    iget-object v9, p0, mLocker:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1c} :catch_1d
    .catchall {:try_start_11 .. :try_end_1c} :catchall_8c

    goto :goto_11

    .line 2081
    :catch_1d
    move-exception v2

    .line 2082
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2084
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_21
    monitor-exit v10
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_8c

    .line 2086
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2087
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2088
    const-string/jumbo v9, "hostName"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "FirewallHostnames"

    invoke-virtual {v9, v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2091
    sget-object v9, allIpsInfo:[Ljava/net/InetAddress;

    if-eqz v9, :cond_9a

    .line 2092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2093
    .local v5, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2094
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2095
    const-string/jumbo v9, "hostName"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    sget-object v0, allIpsInfo:[Ljava/net/InetAddress;

    .local v0, "arr$":[Ljava/net/InetAddress;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_5e
    if-ge v4, v7, :cond_8f

    aget-object v6, v0, v4

    .line 2097
    .local v6, "ipinfo":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    sget-object v9, mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    const-string/jumbo v9, "ipAddress"

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "FirewallHostnames"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2096
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 2084
    .end local v0    # "arr$":[Ljava/net/InetAddress;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    .end local v4    # "i$":I
    .end local v5    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ipinfo":Ljava/net/InetAddress;
    .end local v7    # "len$":I
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    :catchall_8c
    move-exception v9

    :try_start_8d
    monitor-exit v10
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v9

    .line 2102
    .restart local v0    # "arr$":[Ljava/net/InetAddress;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    .restart local v4    # "i$":I
    .restart local v5    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "len$":I
    .restart local v8    # "selectionValues":Landroid/content/ContentValues;
    :cond_8f
    sget-object v9, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    .end local v0    # "arr$":[Ljava/net/InetAddress;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":I
    .end local v5    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "len$":I
    :cond_9a
    return-void
.end method

.method private validateDomain(Ljava/lang/String;)Z
    .registers 14
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 1670
    if-nez p1, :cond_4

    .line 1671
    const/4 v10, 0x0

    .line 1734
    :goto_3
    return v10

    .line 1675
    :cond_4
    const-string v10, "*"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1676
    const/4 v10, 0x1

    goto :goto_3

    .line 1681
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xff

    if-le v10, v11, :cond_18

    .line 1682
    const/4 v10, 0x0

    goto :goto_3

    .line 1686
    :cond_18
    const-string v10, "\\."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1691
    .local v6, "labels":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1692
    .local v4, "isHostnameCandidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_41

    .line 1693
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1694
    .local v1, "ch":C
    const/16 v10, 0x61

    if-lt v1, v10, :cond_38

    const/16 v10, 0x7a

    if-le v1, v10, :cond_40

    :cond_38
    const/16 v10, 0x41

    if-lt v1, v10, :cond_45

    const/16 v10, 0x5a

    if-gt v1, v10, :cond_45

    .line 1695
    :cond_40
    const/4 v4, 0x1

    .line 1701
    .end local v1    # "ch":C
    :cond_41
    if-nez v4, :cond_48

    .line 1702
    const/4 v10, 0x0

    goto :goto_3

    .line 1692
    .restart local v1    # "ch":C
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1705
    .end local v1    # "ch":C
    :cond_48
    const/4 v8, 0x0

    .line 1706
    .local v8, "numDots":I
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_5d

    .line 1707
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_5a

    .line 1708
    add-int/lit8 v8, v8, 0x1

    .line 1706
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1712
    :cond_5d
    array-length v10, v6

    if-lt v8, v10, :cond_62

    .line 1713
    const/4 v10, 0x0

    goto :goto_3

    .line 1716
    :cond_62
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_65
    if-ge v3, v7, :cond_76

    aget-object v5, v0, v3

    .line 1717
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3f

    if-le v10, v11, :cond_73

    .line 1718
    const/4 v10, 0x0

    goto :goto_3

    .line 1716
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 1726
    .end local v5    # "label":Ljava/lang/String;
    :cond_76
    const-string v9, "^[A-Za-z0-9-]+$"

    .line 1727
    .local v9, "regex":Ljava/lang/String;
    move-object v0, v6

    array-length v7, v0

    const/4 v3, 0x0

    :goto_7b
    if-ge v3, v7, :cond_a2

    aget-object v5, v0, v3

    .line 1728
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9c

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_9c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_9f

    .line 1730
    :cond_9c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1727
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 1734
    .end local v5    # "label":Ljava/lang/String;
    :cond_a2
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .registers 27
    .param p1, "type"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 1754
    const-string v16, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 1755
    .local v16, "regexPort":Ljava/lang/String;
    const-string v17, "^(remote|local|\\*)$"

    .line 1757
    .local v17, "regexPortLocation":Ljava/lang/String;
    packed-switch p1, :pswitch_data_2cc

    .line 1769
    :goto_7
    const/4 v6, 0x0

    .local v6, "hosts":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 1770
    .local v15, "ports":[Ljava/lang/String;
    const/16 v21, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 1771
    .local v9, "index":I
    const/4 v10, 0x0

    .line 1773
    .local v10, "isHostname":Z
    if-lez v9, :cond_1bb

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_1bb

    .line 1774
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1775
    .local v2, "allHosts":Ljava/lang/String;
    const-string v21, "["

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4c

    const-string v21, "]"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4c

    .line 1776
    const/16 v21, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1778
    :cond_4c
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, isDomain(Ljava/lang/String;I)Z

    move-result v10

    .line 1786
    if-nez v10, :cond_126

    .line 1787
    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1789
    array-length v0, v6

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c1

    .line 1790
    const/16 v21, 0x0

    aget-object v21, v6, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, isIpv6(Ljava/lang/String;)Z

    move-result v19

    .line 1791
    .local v19, "v6Check1":Z
    const/16 v21, 0x1

    aget-object v21, v6, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, isIpv6(Ljava/lang/String;)Z

    move-result v20

    .line 1792
    .local v20, "v6Check2":Z
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c1

    .line 1793
    const/16 v18, 0x0

    .line 1860
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v6    # "hosts":[Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "isHostname":Z
    .end local v15    # "ports":[Ljava/lang/String;
    .end local v19    # "v6Check1":Z
    .end local v20    # "v6Check2":Z
    :goto_89
    return v18

    .line 1760
    :pswitch_8a
    const-string v16, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 1761
    goto/16 :goto_7

    .line 1763
    :pswitch_8e
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    .line 1764
    .local v18, "ruleMatches":Z
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LOCATION: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 1796
    .end local v18    # "ruleMatches":Z
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v6    # "hosts":[Ljava/lang/String;
    .restart local v9    # "index":I
    .restart local v10    # "isHostname":Z
    .restart local v15    # "ports":[Ljava/lang/String;
    :cond_c1
    const/4 v13, 0x0

    .line 1797
    .local v13, "numHyphen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_dc

    .line 1798
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d9

    .line 1799
    add-int/lit8 v13, v13, 0x1

    .line 1797
    :cond_d9
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 1802
    :cond_dc
    const/16 v21, 0x1

    move/from16 v0, v21

    if-gt v13, v0, :cond_100

    array-length v0, v6

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_100

    array-length v0, v6

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_144

    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_144

    .line 1804
    :cond_100
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1808
    .end local v7    # "i":I
    .end local v13    # "numHyphen":I
    :cond_126
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v6, v0, [Ljava/lang/String;

    .line 1809
    const/16 v21, 0x0

    aput-object v2, v6, v21

    .line 1810
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_140

    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_144

    .line 1812
    :cond_140
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1816
    :cond_144
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1817
    .local v3, "allPorts":Ljava/lang/String;
    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1818
    const/4 v13, 0x0

    .line 1819
    .restart local v13    # "numHyphen":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_158
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_171

    .line 1820
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16e

    .line 1821
    add-int/lit8 v13, v13, 0x1

    .line 1819
    :cond_16e
    add-int/lit8 v7, v7, 0x1

    goto :goto_158

    .line 1824
    :cond_171
    const/16 v21, 0x1

    move/from16 v0, v21

    if-gt v13, v0, :cond_195

    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_195

    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e1

    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e1

    .line 1826
    :cond_195
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1830
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v3    # "allPorts":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v13    # "numHyphen":I
    :cond_1bb
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1834
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v3    # "allPorts":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v13    # "numHyphen":I
    :cond_1e1
    if-eqz v6, :cond_21f

    .line 1835
    if-nez v10, :cond_245

    .line 1836
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1e8
    if-ge v8, v12, :cond_245

    aget-object v5, v4, v8

    .line 1837
    .local v5, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1}, validateIp(Ljava/lang/String;I)Z

    move-result v11

    .line 1838
    .local v11, "isValid":Z
    if-nez v11, :cond_21c

    .line 1839
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1836
    :cond_21c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e8

    .line 1845
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "isValid":Z
    .end local v12    # "len$":I
    :cond_21f
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1848
    :cond_245
    if-eqz v15, :cond_27f

    .line 1849
    move-object v4, v15

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v12, v4

    .restart local v12    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_24a
    if-ge v8, v12, :cond_2a5

    aget-object v14, v4, v8

    .line 1850
    .local v14, "port":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_27c

    .line 1851
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1849
    :cond_27c
    add-int/lit8 v8, v8, 0x1

    goto :goto_24a

    .line 1856
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "port":Ljava/lang/String;
    :cond_27f
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 1859
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    :cond_2a5
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/16 v18, 0x1

    goto/16 :goto_89

    .line 1757
    nop

    :pswitch_data_2cc
    .packed-switch 0x3
        :pswitch_8a
        :pswitch_8e
    .end packed-switch
.end method

.method private validateIp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1954
    if-eqz p1, :cond_16

    .line 1955
    sget-object v2, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1956
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct {p0, p1}, isIpv6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 1958
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_16
    return v1
.end method

.method private validateIp(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1655
    if-nez p1, :cond_4

    .line 1656
    const/4 v0, 0x0

    .line 1666
    :cond_3
    :goto_3
    return v0

    .line 1659
    :cond_4
    invoke-direct {p0, p1}, validateIp(Ljava/lang/String;)Z

    move-result v0

    .line 1662
    .local v0, "ret":Z
    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 1663
    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .registers 7
    .param p1, "interfaceType"    # Ljava/lang/String;

    .prologue
    .line 1897
    sget-object v0, INTERFACE_TYPES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    .line 1898
    .local v2, "interType":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1899
    const/4 v4, 0x1

    .line 1902
    .end local v2    # "interType":Ljava/lang/String;
    :goto_f
    return v4

    .line 1897
    .restart local v2    # "interType":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1902
    .end local v2    # "interType":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private validatePackageName(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1882
    invoke-direct {p0, p2}, getNetworkAppsList(I)Ljava/util/List;

    move-result-object v2

    .line 1885
    .local v2, "netAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1887
    .local v1, "netApp":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1888
    const/4 v3, 0x1

    .line 1891
    .end local v1    # "netApp":Ljava/lang/String;
    :goto_20
    return v3

    :cond_21
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private validateParameters(ILjava/util/List;I)Z
    .registers 16
    .param p1, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1585
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_d
    move v2, v6

    .line 1651
    :cond_e
    :goto_e
    return v2

    .line 1588
    :cond_f
    const/4 v2, 0x1

    .line 1590
    .local v2, "finalResult":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1591
    .local v5, "rule":Ljava/lang/String;
    if-nez v5, :cond_24

    move v2, v6

    .line 1592
    goto :goto_e

    .line 1594
    :cond_24
    packed-switch p1, :pswitch_data_e6

    :pswitch_27
    move v2, v6

    .line 1648
    goto :goto_e

    .line 1596
    :pswitch_29
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1597
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1598
    .local v4, "rerouteArgs":[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v9, :cond_49

    .line 1599
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1600
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    .line 1602
    :cond_49
    array-length v7, v4

    if-ne v7, v10, :cond_69

    .line 1603
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1604
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1606
    aget-object v7, v4, v9

    invoke-direct {p0, v7, p3}, validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1607
    aget-object v7, v4, v11

    invoke-direct {p0, v7}, validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    :cond_69
    move v2, v6

    .line 1609
    goto :goto_e

    .end local v4    # "rerouteArgs":[Ljava/lang/String;
    :cond_6b
    move v2, v6

    .line 1612
    goto :goto_e

    .line 1616
    :pswitch_6d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "allowArgs":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_85

    .line 1618
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1619
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    .line 1620
    :cond_85
    array-length v7, v0

    if-ne v7, v11, :cond_9f

    .line 1621
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1622
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1623
    aget-object v7, v0, v9

    invoke-direct {p0, v7}, validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_9f
    move v2, v6

    .line 1625
    goto/16 :goto_e

    .line 1630
    .end local v0    # "allowArgs":[Ljava/lang/String;
    :pswitch_a2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "denyArgs":[Ljava/lang/String;
    array-length v7, v1

    if-ne v7, v9, :cond_bb

    .line 1632
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1633
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    .line 1634
    :cond_bb
    array-length v7, v1

    if-ne v7, v10, :cond_dc

    .line 1635
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1636
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1637
    aget-object v7, v1, v9

    invoke-direct {p0, v7, p3}, validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1638
    aget-object v7, v1, v11

    invoke-direct {p0, v7}, validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_dc
    move v2, v6

    .line 1640
    goto/16 :goto_e

    .line 1645
    .end local v1    # "denyArgs":[Ljava/lang/String;
    :pswitch_df
    invoke-direct {p0, p1, v5}, validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1646
    goto/16 :goto_14

    .line 1594
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_6d
        :pswitch_a2
        :pswitch_df
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_df
    .end packed-switch
.end method


# virtual methods
.method public cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 671
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 672
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 673
    .local v4, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 674
    .local v1, "containerId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 678
    :cond_f
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, getLastUidForProxy(II)I

    move-result v2

    .line 680
    .local v2, "enabledUid":I
    const-string v3, ""

    .line 681
    .local v3, "typeStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_30

    .line 687
    const/4 v5, 0x0

    .line 694
    :goto_1d
    return v5

    .line 683
    :pswitch_1e
    sget-object v5, iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 684
    .local v0, "chain":Ljava/lang/String;
    const-string/jumbo v3, "proxy"

    .line 690
    invoke-direct {p0, v1, v4, v3}, cleanInDb(IILjava/lang/String;)Z

    .line 691
    if-ne v2, v4, :cond_2e

    .line 692
    invoke-direct {p0}, refreshProxyRules()Z

    .line 694
    :cond_2e
    const/4 v5, 0x1

    goto :goto_1d

    .line 681
    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_1e
    .end packed-switch
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    .line 730
    invoke-direct/range {p0 .. p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 731
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 732
    .local v15, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 733
    .local v3, "containerId":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 734
    .local v16, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, getLastUidForProxy(II)I

    move-result v12

    .line 736
    .local v12, "proxyEnabledUid":I
    if-eqz p2, :cond_2b

    .line 737
    if-eq v12, v15, :cond_1f

    const/4 v2, -0x1

    if-ne v12, v2, :cond_27

    :cond_1f
    if-eqz p2, :cond_2b

    invoke-virtual/range {p0 .. p1}, isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_27
    if-nez p3, :cond_2b

    .line 739
    const/4 v2, 0x0

    .line 802
    :goto_2a
    return v2

    .line 743
    :cond_2b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v15}, setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-nez v2, :cond_37

    .line 744
    const/4 v2, 0x0

    goto :goto_2a

    .line 747
    :cond_37
    if-eqz p2, :cond_ad

    .line 750
    const/4 v2, -0x1

    if-ne v12, v2, :cond_3e

    if-nez p2, :cond_42

    :cond_3e
    if-eq v12, v15, :cond_42

    if-eqz p3, :cond_aa

    .line 752
    :cond_42
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 754
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 757
    .local v13, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a6

    .line 758
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 760
    .local v8, "ruleUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 762
    .local v14, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 763
    .local v9, "arg":Ljava/lang/String;
    if-eqz v9, :cond_a6

    .line 764
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a6

    .line 765
    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 767
    .local v10, "args":[Ljava/lang/String;
    if-nez p3, :cond_97

    .line 769
    const/4 v2, 0x0

    aget-object v4, v10, v2

    const/4 v2, 0x1

    aget-object v5, v10, v2

    const/4 v6, 0x2

    const-string/jumbo v7, "proxy"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 772
    :cond_97
    const/4 v2, 0x0

    aget-object v4, v10, v2

    const/4 v2, 0x1

    aget-object v5, v10, v2

    const/4 v6, 0x1

    const-string/jumbo v7, "proxy"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 802
    .end local v8    # "ruleUid":I
    .end local v9    # "arg":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    .end local v13    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a6
    :goto_a6
    const/4 v2, 0x1

    goto :goto_2a

    .line 779
    :cond_a8
    const/4 v2, 0x0

    goto :goto_2a

    .line 782
    :cond_aa
    const/4 v2, 0x1

    goto/16 :goto_2a

    .line 786
    :cond_ad
    const-string v2, "FirewallPolicy"

    const-string v4, " Disabling proxy"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, getLastUidForProxy(II)I

    move-result v11

    .line 788
    .local v11, "enabledUid":I
    const-string v2, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Disabling proxy enabledUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 791
    const-string v2, "FirewallPolicy"

    const-string v4, " setProxyRulesEnableOnDb true "

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    if-ne v12, v15, :cond_a6

    .line 794
    invoke-direct/range {p0 .. p1}, disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z

    .line 796
    invoke-direct/range {p0 .. p0}, refreshProxyRules()Z

    goto :goto_a6

    .line 799
    :cond_f7
    const/4 v2, 0x0

    goto/16 :goto_2a
.end method

.method public enableProxyWithUid(IZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 721
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxyWithUid(ZI)Z
    .registers 5
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 725
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public getHostnameFromIp(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2108
    iget v0, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2110
    .local v0, "adminUid":I
    sget-object v1, mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    .line 2111
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, loadHostnameMapFromDb(IZ)V

    .line 2114
    :cond_e
    sget-object v1, mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getIpList(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2015
    iget v0, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2017
    .local v0, "adminUid":I
    sget-object v1, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    .line 2018
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, loadHostnameMapFromDb(IZ)V

    .line 2021
    :cond_e
    sget-object v1, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 2022
    invoke-direct {p0, p1, v0}, updateHostnameIps(Ljava/lang/String;I)V

    .line 2025
    :cond_1f
    sget-object v1, mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public bridge synthetic getIpList(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, getIpList(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1557
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_46

    move-result-object p1

    .line 1559
    const/4 v2, 0x0

    .line 1561
    .local v2, "networkType":I
    if-eqz p2, :cond_2b

    .line 1562
    :try_start_9
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v6, "RESTRICTION"

    const-string v7, "MarketNetworkType"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1565
    .local v1, "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_23
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_9 .. :try_end_23} :catch_3a
    .catchall {:try_start_9 .. :try_end_23} :catchall_46

    move-result v4

    if-eqz v4, :cond_27

    .line 1566
    const/4 v2, 0x1

    .line 1577
    .end local v1    # "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_27
    :goto_27
    if-ne v2, v3, :cond_44

    .line 1580
    :goto_29
    monitor-exit p0

    return v3

    .line 1569
    :cond_2b
    :try_start_2b
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "RESTRICTION"

    const-string v8, "MarketNetworkType"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2b .. :try_end_38} :catch_3a
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    move-result v2

    goto :goto_27

    .line 1572
    :catch_3a
    move-exception v0

    .line 1573
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_3b
    const-string v3, "FirewallPolicy"

    const-string v4, "No Admin data was found - Network for Market Policy"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_46

    .line 1574
    const/4 v3, -0x1

    goto :goto_29

    .line 1580
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_44
    const/4 v3, 0x0

    goto :goto_29

    .line 1557
    .end local v2    # "networkType":I
    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2145
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2146
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2147
    .local v0, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2149
    .local v1, "uid":I
    packed-switch p2, :pswitch_data_1e

    .line 2153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    return-object v2

    .line 2151
    :pswitch_11
    const-string/jumbo v2, "proxy"

    invoke-direct {p0, v0, v1, v2}, getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 2149
    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch
.end method

.method public isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 630
    const-string v2, "FirewallPolicy"

    const-string v3, " isEnabledProxy calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_10
    :goto_10
    return v1

    .line 633
    :cond_11
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 634
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, getLastUidForProxy(II)I

    move-result v0

    .line 636
    .local v0, "enabledUid":I
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isEnabledProxy cxtInfo.mCallerUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "enabledUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v2, v0, :cond_10

    .line 639
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1319
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1323
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 1324
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v0}, applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 1325
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1921
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1933
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 1935
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1915
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 1916
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    .line 1917
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1926
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 1928
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    .line 1929
    return-void
.end method

.method public performMigration()V
    .registers 15

    .prologue
    .line 258
    sget-boolean v10, mMigrationNeeded:Z

    if-eqz v10, :cond_a4

    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_a4

    .line 260
    :try_start_a
    iget-object v10, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 261
    .local v7, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_a4

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 262
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v1, "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "FirewallTable"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 264
    .local v9, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x1

    .line 265
    .local v8, "ret":Z
    if-eqz v9, :cond_ab

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_ab

    .line 266
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 270
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "timestamp"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v10, "id"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 272
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    .local v0, "adminUid":I
    const-string/jumbo v10, "enabled"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 274
    .local v6, "isEnabled":Z
    if-eqz v6, :cond_6a

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_6a
    invoke-direct {p0, v2}, convertRule(Landroid/content/ContentValues;)Z

    move-result v10

    and-int/2addr v8, v10

    .line 278
    goto :goto_34

    .line 282
    .end local v0    # "adminUid":I
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "isEnabled":Z
    :cond_70
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_74
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    .restart local v0    # "adminUid":I
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 284
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0}, getService()Lcom/sec/enterprise/firewall/IFirewall;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8c} :catch_9c

    move-result-object v10

    if-eqz v10, :cond_74

    .line 286
    :try_start_8f
    iget-object v10, p0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    const/4 v11, 0x1

    invoke-interface {v10, v3, v11}, Lcom/sec/enterprise/firewall/IFirewall;->enableFirewall(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_95} :catch_96
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_95} :catch_9c

    goto :goto_74

    .line 287
    :catch_96
    move-exception v4

    .line 288
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v8, 0x0

    .line 289
    :try_start_98
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_74

    .line 300
    .end local v0    # "adminUid":I
    .end local v1    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "netInfo":Landroid/net/NetworkInfo;
    .end local v8    # "ret":Z
    .end local v9    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_9c
    move-exception v4

    .line 301
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "FirewallPolicy"

    const-string v11, "checkOnline exception"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a4
    :goto_a4
    return-void

    .line 293
    .restart local v1    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v8    # "ret":Z
    .restart local v9    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_a5
    if-eqz v8, :cond_a4

    .line 294
    const/4 v10, 0x0

    :try_start_a8
    sput-boolean v10, mMigrationNeeded:Z

    goto :goto_a4

    .line 297
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_ab
    const/4 v10, 0x0

    sput-boolean v10, mMigrationNeeded:Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ae} :catch_9c

    goto :goto_a4
.end method

.method public declared-synchronized setNetworkForMarket(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1394
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1395
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_28

    move-result v6

    .line 1398
    .local v6, "actualNetwork":I
    :try_start_b
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "RESTRICTION"

    const-string v5, "MarketNetworkType"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_1e
    .catchall {:try_start_b .. :try_end_18} :catchall_28

    move-result v6

    .line 1404
    :goto_19
    if-ne v6, p2, :cond_2b

    move v8, v0

    .line 1419
    :cond_1c
    :goto_1c
    monitor-exit p0

    return v8

    .line 1400
    :catch_1e
    move-exception v7

    .line 1401
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1f
    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "setNetworkForMarket - exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_19

    .line 1394
    .end local v6    # "actualNetwork":I
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1408
    .restart local v6    # "actualNetwork":I
    :cond_2b
    const/4 v8, 0x0

    .line 1409
    .local v8, "result":Z
    if-eq p2, v0, :cond_30

    if-nez p2, :cond_1c

    .line 1412
    :cond_30
    :try_start_30
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1417
    invoke-direct {p0, p1}, applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_28

    goto :goto_1c
.end method

.method public setProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 645
    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 647
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 648
    .local v9, "uid":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 649
    .local v6, "containerId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v8, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v8, v0}, validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_3e

    move v4, v10

    .line 666
    :cond_3d
    :goto_3d
    return v4

    .line 654
    :cond_3e
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v6, v0}, getLastUidForProxy(II)I

    move-result v7

    .line 657
    .local v7, "enabledUid":I
    invoke-virtual {p0, p1, v2}, cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 658
    const-string/jumbo v5, "proxy"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 660
    if-ne v7, v9, :cond_3d

    .line 661
    invoke-virtual {p0, p1, v4}, enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    goto :goto_3d

    :cond_5f
    move v4, v10

    .line 666
    goto :goto_3d
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1911
    return-void
.end method

.method public updateHostnameMap()V
    .registers 32

    .prologue
    .line 497
    sget-boolean v28, mIsHostnameHashMapCreated:Z

    if-nez v28, :cond_11

    .line 498
    const/16 v28, -0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, loadHostnameMapFromDb(IZ)V

    .line 500
    :cond_11
    invoke-direct/range {p0 .. p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v28

    if-eqz v28, :cond_291

    .line 502
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, mCon:Landroid/net/IConnectivityManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 503
    .local v18, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v18, :cond_288

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    if-eqz v28, :cond_288

    .line 504
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsOnline:Z

    .line 505
    invoke-direct/range {p0 .. p0}, getAllAdmins()Ljava/util/ArrayList;

    move-result-object v3

    .line 507
    .local v3, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_39
    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_252

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 508
    .local v4, "adminUid":I
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v6, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 509
    .local v6, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct/range {p0 .. p0}, getFirewallService()Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v28

    if-eqz v28, :cond_62

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, mFirewallService:Lcom/sec/enterprise/firewall/IFirewall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Lcom/sec/enterprise/firewall/IFirewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v28

    if-eqz v28, :cond_39

    .line 514
    :cond_62
    const/16 v21, 0x0

    .line 515
    .local v21, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct/range {p0 .. p0}, getService()Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v28

    if-eqz v28, :cond_7e

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    move-object/from16 v28, v0

    const/16 v29, 0xf

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v6, v1, v2}, Lcom/sec/enterprise/firewall/IFirewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v21

    .line 519
    :cond_7e
    if-eqz v21, :cond_39

    .line 523
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 524
    .local v8, "hostMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v25, "rulesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    move-object/from16 v5, v21

    .local v5, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_90
    move/from16 v0, v17

    if-ge v12, v0, :cond_1af

    aget-object v20, v5, v12

    .line 526
    .local v20, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, getHostnameFromIp(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, "hostname":Ljava/lang/String;
    if-eqz v9, :cond_1ab

    .line 528
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_b4

    .line 529
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_b4
    new-instance v27, Lcom/sec/enterprise/firewall/FirewallRule;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 535
    .local v27, "tempRule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_ce

    .line 536
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 538
    :cond_ce
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_db

    .line 539
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 541
    :cond_db
    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f3

    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_100

    :cond_f3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v28

    if-eqz v28, :cond_100

    .line 544
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 546
    :cond_100
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v28

    if-eqz v28, :cond_10d

    .line 547
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 549
    :cond_10d
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v28

    if-eqz v28, :cond_11a

    .line 550
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 552
    :cond_11a
    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_132

    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13f

    :cond_132
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v28

    if-eqz v28, :cond_13f

    .line 554
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 556
    :cond_13f
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v28

    if-eqz v28, :cond_14c

    .line 557
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 559
    :cond_14c
    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_165

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_165

    .line 560
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 562
    :cond_165
    sget-object v28, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17e

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_17e

    .line 563
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 565
    :cond_17e
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const-string v28, "*"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1ab

    .line 568
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v27    # "tempRule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_1ab
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_90

    .line 573
    .end local v9    # "hostname":Ljava/lang/String;
    .end local v20    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_1af
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallRule;

    move-object/from16 v26, v0

    .line 575
    .local v26, "rulesToRemoveArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1ba
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_1cf

    .line 576
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/enterprise/firewall/FirewallRule;

    aput-object v28, v26, v10

    .line 575
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ba

    .line 579
    :cond_1cf
    invoke-direct/range {p0 .. p0}, getService()Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v28

    if-eqz v28, :cond_1e2

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Lcom/sec/enterprise/firewall/IFirewall;->removeRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 583
    :cond_1e2
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 586
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .end local v12    # "i$":I
    .local v23, "rulesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    :cond_1ef
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_253

    .line 589
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 591
    .local v19, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 593
    .local v22, "rulesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 594
    .restart local v9    # "hostname":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, updateHostnameIps(Ljava/lang/String;I)V

    .line 595
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, getIpList(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v15

    .line 596
    .local v15, "ips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_216
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1ef

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/enterprise/firewall/FirewallRule;

    .line 597
    .restart local v20    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_226
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_216

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 598
    .local v14, "ip":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, changeRuleIp(Lcom/sec/enterprise/firewall/FirewallRule;Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_241} :catch_242

    goto :goto_226

    .line 615
    .end local v3    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "adminUid":I
    .end local v5    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v6    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v8    # "hostMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    .end local v9    # "hostname":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ip":Ljava/lang/String;
    .end local v15    # "ips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;>;"
    .end local v17    # "len$":I
    .end local v18    # "netInfo":Landroid/net/NetworkInfo;
    .end local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    .end local v20    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v21    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v22    # "rulesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .end local v23    # "rulesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .end local v25    # "rulesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .end local v26    # "rulesToRemoveArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    :catch_242
    move-exception v7

    .line 616
    .local v7, "e":Ljava/lang/Exception;
    const-string v28, "FirewallPolicy"

    const-string v29, "checkOnline exception"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsOnline:Z

    .line 622
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_252
    :goto_252
    return-void

    .line 603
    .restart local v3    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "adminUid":I
    .restart local v5    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v6    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v8    # "hostMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    .restart local v10    # "i":I
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;>;"
    .restart local v17    # "len$":I
    .restart local v18    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v21    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v23    # "rulesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .restart local v25    # "rulesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .restart local v26    # "rulesToRemoveArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_253
    :try_start_253
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallRule;

    move-object/from16 v24, v0

    .line 605
    .local v24, "rulesToAddArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v10, 0x0

    :goto_25e
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_273

    .line 606
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/enterprise/firewall/FirewallRule;

    aput-object v28, v24, v10

    .line 605
    add-int/lit8 v10, v10, 0x1

    goto :goto_25e

    .line 608
    :cond_273
    invoke-direct/range {p0 .. p0}, getService()Lcom/sec/enterprise/firewall/IFirewall;

    move-result-object v28

    if-eqz v28, :cond_39

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/sec/enterprise/firewall/IFirewall;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Lcom/sec/enterprise/firewall/IFirewall;->addRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    goto/16 :goto_39

    .line 613
    .end local v3    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "adminUid":I
    .end local v5    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v6    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v8    # "hostMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;"
    .end local v10    # "i":I
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;>;>;"
    .end local v17    # "len$":I
    .end local v21    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v23    # "rulesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .end local v24    # "rulesToAddArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v25    # "rulesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    .end local v26    # "rulesToRemoveArray":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_288
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsOnline:Z
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_290} :catch_242

    goto :goto_252

    .line 620
    .end local v18    # "netInfo":Landroid/net/NetworkInfo;
    :cond_291
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsOnline:Z

    goto :goto_252
.end method
