.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.super Ljava/lang/Object;
.source "KnoxVpnProcessManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProcessManager"

.field private static volatile instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

.field private static mActivityManagerNative:Landroid/app/IActivityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field protected mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 25
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, DBG:Z

    .line 32
    sput-object v2, instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 34
    sput-object v2, mActivityManagerNative:Landroid/app/IActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 29
    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 30
    iput-object v0, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 31
    iput-object v0, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 36
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v0, p0, mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 6
    .param p1, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 29
    iput-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 30
    iput-object v1, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 31
    iput-object v1, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 36
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v1, p0, mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 63
    iput-object p1, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 64
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iput-object v1, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 65
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iput-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 66
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v1

    iput-object v1, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 68
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, mActivityManagerNative:Landroid/app/IActivityManager;

    .line 69
    sget-object v1, mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_50

    .line 70
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_47

    const-string v1, "KnoxVpnProcessManager"

    const-string/jumbo v2, "mActivityManagerNative not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_47
    :try_start_47
    sget-object v1, mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-virtual {p0}, getProcessObserver()Landroid/app/IProcessObserver$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_51

    .line 78
    :cond_50
    :goto_50
    return-void

    .line 73
    :catch_51
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, onApplicationStart(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, onApplicationStop(II)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .registers 3
    .param p0, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 82
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    monitor-enter v1

    if-nez p0, :cond_8

    .line 83
    const/4 v0, 0x0

    .line 91
    :goto_6
    monitor-exit v1

    return-object v0

    .line 87
    :cond_8
    :try_start_8
    sget-object v0, instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    if-nez v0, :cond_13

    .line 88
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {v0, p0}, <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    sput-object v0, instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 91
    :cond_13
    sget-object v0, instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 82
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized onApplicationStart(II)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v4, :cond_d

    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v4, :cond_d

    iget-object v4, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_a6

    if-nez v4, :cond_f

    .line 119
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 107
    :cond_f
    :try_start_f
    iget-object v4, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "profileName":Ljava/lang/String;
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "type":I
    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 114
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_45

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_45
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_76

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : profileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_76
    iget-object v4, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const v6, 0x186a0

    div-int v6, p2, v6

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "iResult":I
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : start a vpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_f .. :try_end_a4} :catchall_a6

    goto/16 :goto_d

    .line 103
    .end local v0    # "iResult":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "type":I
    :catchall_a6
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized onApplicationStop(II)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v8, :cond_d

    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v8, :cond_d

    iget-object v8, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_39

    if-nez v8, :cond_f

    .line 176
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 128
    :cond_f
    :try_start_f
    iget-object v8, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "profileName":Ljava/lang/String;
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "packageName":Ljava/lang/String;
    iget-object v8, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v6

    .line 132
    .local v6, "type":I
    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    const/4 v8, 0x1

    if-ne v6, v8, :cond_d

    .line 136
    iget-object v8, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 137
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v4, :cond_3c

    .line 138
    const-string v8, "KnoxVpnProcessManager"

    const-string/jumbo v9, "profileEntry is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_39

    goto :goto_d

    .line 124
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "type":I
    :catchall_39
    move-exception v8

    monitor-exit p0

    throw v8

    .line 142
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_3c
    :try_start_3c
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_59

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_59
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_8a

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : profileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_8a
    invoke-virtual {p0, v4}, processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v2

    .line 147
    .local v2, "isExistRunningApps":Z
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_ab

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : isExistRunningApps : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_3c .. :try_end_ab} :catchall_39

    .line 149
    :cond_ab
    if-nez v2, :cond_d

    .line 151
    :try_start_ad
    iget-object v8, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    .line 152
    .local v7, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v7, :cond_e3

    .line 153
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_d

    const-string v8, "KnoxVpnProcessManager"

    const-string/jumbo v9, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c1} :catch_c3
    .catchall {:try_start_ad .. :try_end_c1} :catchall_39

    goto/16 :goto_d

    .line 172
    .end local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_c3
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c4
    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopping vpn connection : Failure at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_39

    goto/16 :goto_d

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_e3
    :try_start_e3
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "currentState":I
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_103

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The current state of the vpn profile before calling stop connection for application on on-demand mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_103
    packed-switch v0, :pswitch_data_118

    goto/16 :goto_d

    .line 163
    :pswitch_108
    iget-object v8, p0, mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateBlockingRules(Ljava/lang/String;)V

    .line 164
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    goto/16 :goto_d

    .line 167
    :pswitch_112
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_115} :catch_c3
    .catchall {:try_start_e3 .. :try_end_115} :catchall_39

    goto/16 :goto_d

    .line 158
    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_108
        :pswitch_108
        :pswitch_108
        :pswitch_112
        :pswitch_108
    .end packed-switch
.end method


# virtual methods
.method public getProcessObserver()Landroid/app/IProcessObserver$Stub;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, mProcessObserver:Landroid/app/IProcessObserver$Stub;

    return-object v0
.end method

.method protected processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z
    .registers 14
    .param p1, "profileEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 183
    .local v8, "token":J
    :try_start_4
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 185
    .local v5, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v6, "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 188
    .local v4, "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_35

    .line 189
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 192
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 193
    .local v3, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_55
    .catchall {:try_start_4 .. :try_end_54} :catchall_8e

    goto :goto_3d

    .line 202
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_55
    move-exception v7

    .line 204
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    :goto_59
    const/4 v7, 0x0

    :goto_5a
    return v7

    .line 196
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5b
    :try_start_5b
    invoke-interface {v6, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 198
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_8a

    .line 199
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_85

    const-string v7, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processRunCheck / runningUID.size() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_85} :catch_55
    .catchall {:try_start_5b .. :try_end_85} :catchall_8e

    .line 200
    :cond_85
    const/4 v7, 0x1

    .line 204
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5a

    :cond_8a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_59

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_8e
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method
