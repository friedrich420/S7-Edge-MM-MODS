.class public Lcom/android/server/RCPManagerService;
.super Landroid/os/IRCPManager$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RCPManagerService$PersonaObserver;,
        Lcom/android/server/RCPManagerService$ExchangeDataInfo;,
        Lcom/android/server/RCPManagerService$EmergencyModeReceiver;,
        Lcom/android/server/RCPManagerService$PackageReceiver;,
        Lcom/android/server/RCPManagerService$BootReceiver;,
        Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;
    }
.end annotation


# static fields
.field private static final FMC_IMCOMING_CALL:Ljava/lang/String; = "com.samsung.knox.fmc_incoming_call"

.field private static final INTENT_KEY:Ljava/lang/String; = "intent"

.field private static final LAUNCH_CONTENT_INTENT_ACTION:Ljava/lang/String; = "launchContentIntent"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "launchIntent"

.field private static final OWNER_ID:Ljava/lang/Integer;

.field private static final PENDING_INTENT_KEY:Ljava/lang/String; = "pendingIntent"

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field private static final RCP_PROXY_SP_NAME:Ljava/lang/String; = "RCPProxyForUser"

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field private static TAG:Ljava/lang/String;

.field public static kioskAllowedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final KNOX_DEBUG:Z

.field private final TAG_BRIDGE_PROXY:Ljava/lang/String;

.field private mBridgeCommandExeUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ICommandExeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeProviderUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeProxyAliveList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/bridge/BridgeProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mBridgeProxyEnabled:Ljava/lang/String;

.field private mBridgeRedesign:Z

.field private mBridgeSyncUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ISyncCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Command;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

.field mExchangeDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/RCPManagerService$ExchangeDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/RCPManagerService$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgReceiverList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/RCPManagerService$PackageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPGlobalContactsDirMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPGlobalContactsDir;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPInterfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPProxyAliveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

.field receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

.field private taskHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string v0, "RCPManagerService"

    sput-object v0, TAG:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, OWNER_ID:Ljava/lang/Integer;

    .line 160
    sput-object v2, sContext:Landroid/content/Context;

    .line 208
    sput-object v2, kioskAllowedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;-><init>()V

    .line 146
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mBridgeProviderUserMap:Ljava/util/HashMap;

    .line 147
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mBridgeSyncUserMap:Ljava/util/HashMap;

    .line 148
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    .line 149
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mBridgeCommandExeUserMap:Ljava/util/HashMap;

    .line 150
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mRCPInterfaceMap:Ljava/util/HashMap;

    .line 151
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mRCPProxyAliveList:Ljava/util/List;

    .line 154
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mBridgeProxyAliveList:Ljava/util/HashMap;

    .line 155
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mPkgReceiverList:Ljava/util/HashMap;

    .line 156
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mPersonaObservers:Ljava/util/HashMap;

    .line 174
    const-string/jumbo v13, "eng"

    const-string/jumbo v14, "ro.build.type"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, KNOX_DEBUG:Z

    .line 175
    const-string v13, "Bridge_PROXY"

    move-object/from16 v0, p0

    iput-object v13, v0, TAG_BRIDGE_PROXY:Ljava/lang/String;

    .line 176
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mBridgeRedesign:Z

    .line 178
    const-string v13, "Enabled"

    move-object/from16 v0, p0

    iput-object v13, v0, mBridgeProxyEnabled:Ljava/lang/String;

    .line 179
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 201
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mCommandQueue:Ljava/util/Map;

    .line 210
    new-instance v13, Lcom/android/server/RCPManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mBtReceiver:Landroid/content/BroadcastReceiver;

    .line 2225
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mExchangeDataInfos:Ljava/util/List;

    .line 435
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 436
    sput-object p1, sContext:Landroid/content/Context;

    .line 439
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, taskHandler:Landroid/os/Handler;

    .line 442
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, "RCPManagerService() registering receiver for package added and user switch"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/server/RCPManagerService$BootReceiver;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/RCPManagerService$BootReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v5, "filterModeSwitcher":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v13, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v13, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v13, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v13, "com.samsung.knox.fmc_incoming_call"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    new-instance v13, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    new-instance v2, Landroid/content/IntentFilter;

    const-string v13, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-direct {v2, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 460
    .local v2, "btFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, mBtReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v4, "filterEmergency":Landroid/content/IntentFilter;
    const-string v13, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    new-instance v13, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 467
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, " registered the receiver "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v13, Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/bridge/operations/SimplePersonaInfos;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 474
    :try_start_13b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    new-instance v14, Lcom/android/server/RCPManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-interface {v13, v14}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_149} :catch_19e

    .line 535
    :goto_149
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string/jumbo v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    .line 540
    .local v8, "mPersona":Landroid/os/PersonaManager;
    :try_start_156
    new-instance v13, Lcom/android/server/RCPManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/RCPManagerService$3;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {v8, v13}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_160} :catch_1a3

    .line 678
    :goto_160
    invoke-direct/range {p0 .. p0}, registerKnoxModeChangeObserver()V

    .line 680
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v10

    .line 681
    .local v10, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v10, :cond_1ac

    .line 682
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_16e
    :goto_16e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PersonaInfo;

    .line 683
    .local v12, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v12, :cond_16e

    iget-boolean v13, v12, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_16e

    iget-boolean v13, v12, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_16e

    .line 686
    iget-boolean v13, v12, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v13, :cond_16e

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "kiosk_enabled"

    const/4 v15, 0x1

    iget v0, v12, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_16e

    .line 531
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "mPersona":Landroid/os/PersonaManager;
    .end local v10    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v12    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_19e
    move-exception v3

    .line 532
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_149

    .line 673
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "mPersona":Landroid/os/PersonaManager;
    :catch_1a3
    move-exception v3

    .line 674
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_160

    .line 693
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v10    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1ac
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v11

    .line 694
    .local v11, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v11, :cond_1d1

    .line 695
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1b7
    :goto_1b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PersonaInfo;

    .line 696
    .local v9, "persona":Landroid/content/pm/PersonaInfo;
    iget-boolean v13, v9, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v13, :cond_1b7

    .line 697
    invoke-virtual {v9}, Landroid/content/pm/PersonaInfo;->getId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, registerPersonaObserver(I)V

    goto :goto_1b7

    .line 702
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_1d1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v13

    sget-object v14, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v13, v14}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v13

    if-gez v13, :cond_1ff

    const/4 v7, 0x0

    .line 705
    .local v7, "isKnoxVersionPostV25":Z
    :goto_1de
    if-eqz v7, :cond_1ec

    .line 706
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, "----- Knox version 2.5.0 onwards detected -----"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mBridgeRedesign:Z

    .line 713
    :cond_1ec
    invoke-virtual {v8}, Landroid/os/PersonaManager;->isFOTAUpgrade()Z

    move-result v13

    if-eqz v13, :cond_1fe

    if-eqz v7, :cond_1fe

    .line 714
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, "----- handle FOTA to Knox 2.5.0 onwards -----"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct/range {p0 .. p0}, handleFOTAUpgradeTo_2_5()V

    .line 718
    :cond_1fe
    return-void

    .line 702
    .end local v7    # "isKnoxVersionPostV25":Z
    :cond_1ff
    const/4 v7, 0x1

    goto :goto_1de
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 123
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, sendRCPPolicyBroadcastToGearManager(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, unregisterBridgeProxy(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/RCPManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    invoke-direct {p0}, updateKnoxInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/RCPManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    invoke-direct {p0}, checkIfGearConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 123
    sget-object v0, OWNER_ID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/RCPManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-boolean v0, p0, mBridgeRedesign:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/RCPManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-boolean v0, p0, KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/RCPManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, bindToBridgeProxy(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, clearBridgeProxyPrefs(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, startBridgeProxy(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/RCPManagerService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    invoke-direct {p0}, getAllPersonas()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, unregisterPacakgeReceiver(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/RCPManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, updateQuickSwitcher(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, taskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, mBridgeCommandExeUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/RCPManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, mCommandQueue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, startKnoxModeSwitcher(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 123
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToBridgeProxy(ILjava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "bridgePackage"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_26

    .line 1584
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToBridgeProxy : called for userId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with pacakge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_26
    iget-object v7, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    monitor-enter v7

    .line 1588
    :try_start_29
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1589
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_51

    .line 1590
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Returning...BridgeProxy already active for user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_51
    monitor-exit v7

    .line 1629
    :goto_52
    return-void

    .line 1596
    :cond_53
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 1597
    new-instance v6, Lcom/android/server/bridge/BridgeProxy;

    const/4 v0, 0x0

    iget-object v1, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    invoke-direct {v6, v0, p2, v1}, Lcom/android/server/bridge/BridgeProxy;-><init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    .line 1598
    .local v6, "bridgeProxy":Lcom/android/server/bridge/BridgeProxy;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V

    .line 1600
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_82

    .line 1602
    const-string v0, "Bridge_PROXY"

    const-string v1, "bindToBridgeProxy : started BridgeProxy for user - 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    .end local v6    # "bridgeProxy":Lcom/android/server/bridge/BridgeProxy;
    :cond_82
    new-instance v6, Lcom/android/server/bridge/BridgeProxy;

    iget-object v0, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    invoke-direct {v6, p1, p2, v0}, Lcom/android/server/bridge/BridgeProxy;-><init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    .line 1607
    .restart local v6    # "bridgeProxy":Lcom/android/server/bridge/BridgeProxy;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V

    .line 1609
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget-object v0, p0, mPkgReceiverList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 1614
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1615
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1616
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1617
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1618
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1619
    new-instance v0, Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/RCPManagerService$PackageReceiver;-><init>(Lcom/android/server/RCPManagerService;I)V

    iput-object v0, p0, receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    .line 1620
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1623
    iget-object v0, p0, mPkgReceiverList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_dd
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_f9

    .line 1626
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToBridgeProxy : started BridgeProxy for user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_f9
    monitor-exit v7

    goto/16 :goto_52

    .end local v6    # "bridgeProxy":Lcom/android/server/bridge/BridgeProxy;
    :catchall_fc
    move-exception v0

    monitor-exit v7
    :try_end_fe
    .catchall {:try_start_29 .. :try_end_fe} :catchall_fc

    throw v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v1, "RCPManagerService"

    .line 185
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5a

    .line 187
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 195
    throw v0

    .line 198
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5a
    const/4 v2, 0x0

    return v2
.end method

.method private checkIfGearConnected()Z
    .registers 2

    .prologue
    .line 1131
    const/4 v0, 0x1

    return v0
.end method

.method private clearBridgeProxyPrefs(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 2016
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPProxyForUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2017
    .local v0, "prefs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2018
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPProxyForUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2020
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2022
    :cond_47
    return-void
.end method

.method private delete(Ljava/io/File;)V
    .registers 9
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 1706
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1709
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_25
    if-ge v2, v3, :cond_2f

    aget-object v1, v0, v2

    .line 1710
    .local v1, "c":Ljava/io/File;
    invoke-direct {p0, v1}, delete(Ljava/io/File;)V

    .line 1709
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1712
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1713
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_4e
    return-void
.end method

.method private fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 20
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 1718
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "fileCopy "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " to "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v2, 0x0

    .line 1721
    .local v2, "Result":Z
    const/4 v11, 0x0

    .line 1722
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 1725
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 1726
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_6b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_b0

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 1740
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :goto_35
    :try_start_35
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3c} :catch_b5

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 1748
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :goto_3d
    const/4 v3, 0x0

    .line 1749
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 1751
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    if-eqz v11, :cond_54

    if-eqz v13, :cond_54

    .line 1752
    :try_start_43
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1753
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 1754
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 1755
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_54} :catch_11c
    .catchall {:try_start_43 .. :try_end_54} :catchall_198

    .line 1758
    .end local v6    # "lSize":J
    :cond_54
    const/4 v2, 0x1

    .line 1766
    if-eqz v3, :cond_5a

    .line 1767
    :try_start_57
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1769
    :cond_5a
    if-eqz v8, :cond_5f

    .line 1770
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 1772
    :cond_5f
    if-eqz v11, :cond_64

    .line 1773
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 1775
    :cond_64
    if-eqz v13, :cond_69

    .line 1776
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_69} :catch_fa

    :cond_69
    :goto_69
    move v9, v2

    .line 1784
    .end local v2    # "Result":Z
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .local v9, "Result":I
    :goto_6a
    return v9

    .line 1728
    .end local v9    # "Result":I
    .restart local v2    # "Result":Z
    :catch_6b
    move-exception v10

    .line 1729
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    .line 1734
    .restart local v9    # "Result":I
    goto :goto_6a

    .line 1735
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_b0
    move-exception v10

    .line 1736
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 1741
    .end local v10    # "e":Ljava/io/IOException;
    :catch_b5
    move-exception v10

    .line 1742
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 1778
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    :catch_fa
    move-exception v10

    .line 1779
    .local v10, "e":Ljava/io/IOException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    .line 1759
    .end local v10    # "e":Ljava/io/IOException;
    :catch_11c
    move-exception v10

    .line 1760
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_11d
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ IOException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catchall {:try_start_11d .. :try_end_15f} :catchall_198

    .line 1763
    const/4 v2, 0x0

    .line 1766
    if-eqz v3, :cond_165

    .line 1767
    :try_start_162
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1769
    :cond_165
    if-eqz v8, :cond_16a

    .line 1770
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 1772
    :cond_16a
    if-eqz v11, :cond_16f

    .line 1773
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 1775
    :cond_16f
    if-eqz v13, :cond_69

    .line 1776
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_174} :catch_176

    goto/16 :goto_69

    .line 1778
    :catch_176
    move-exception v10

    .line 1779
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    .line 1765
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_198
    move-exception v4

    .line 1766
    if-eqz v3, :cond_19e

    .line 1767
    :try_start_19b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1769
    :cond_19e
    if-eqz v8, :cond_1a3

    .line 1770
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 1772
    :cond_1a3
    if-eqz v11, :cond_1a8

    .line 1773
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 1775
    :cond_1a8
    if-eqz v13, :cond_1ad

    .line 1776
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1ad} :catch_1ae

    .line 1781
    :cond_1ad
    :goto_1ad
    throw v4

    .line 1778
    :catch_1ae
    move-exception v10

    .line 1779
    .restart local v10    # "e":Ljava/io/IOException;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "close : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ad
.end method

.method private getAllPersonas()[I
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 1918
    :try_start_1
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1920
    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v7

    .line 1922
    .local v7, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v7, :cond_19

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1923
    :cond_19
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "getAllPersonas(): List<PersonaInfo> is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 1940
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_22
    return-object v4

    .line 1928
    .restart local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_23
    const/4 v1, 0x0

    .line 1929
    .local v1, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v4, v9, [I

    .line 1931
    .local v4, "ids":[I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 1932
    .local v6, "personaInfo":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v9, v6, Landroid/content/pm/PersonaInfo;->id:I

    aput v9, v4, v2

    move v2, v1

    .line 1933
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2f

    .line 1934
    .end local v6    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_43
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllPersonas(): size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    goto :goto_22

    .line 1936
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":[I
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_5d
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "getAllPersonas(): Rorre..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v8

    .line 1940
    goto :goto_22
.end method

.method private getAllUserIds()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 916
    .local v3, "mUserManager":Landroid/os/UserManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 918
    .local v1, "mActMngr":Landroid/app/ActivityManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 921
    .local v2, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 937
    .local v6, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v4, "persona_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 940
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 943
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_43
    return-object v4
.end method

.method private getAllowedIds(I)Ljava/util/ArrayList;
    .registers 12
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling User is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string/jumbo v7, "persona"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1676
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaManagerService;

    .line 1678
    .local v6, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v2, 0x0

    .line 1679
    .local v2, "isPersona":Z
    if-eqz v6, :cond_34

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1680
    const/4 v2, 0x1

    .line 1682
    :cond_34
    const/4 v4, -0x1

    .line 1683
    .local v4, "parent":I
    if-eqz v6, :cond_6b

    if-eqz v2, :cond_6b

    .line 1684
    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    .line 1689
    :goto_3d
    if-ltz v4, :cond_47

    .line 1690
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    :cond_47
    const/4 v5, 0x0

    .line 1692
    .local v5, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_4f

    .line 1693
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v5

    .line 1696
    :cond_4f
    if-eqz v5, :cond_6d

    .line 1697
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_52
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6d

    .line 1698
    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    iget v7, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 1686
    .end local v3    # "k":I
    .end local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6b
    move v4, p1

    goto :goto_3d

    .line 1701
    .restart local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6d
    return-object v1
.end method

.method private getAppNameByPID(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .prologue
    .line 2059
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2061
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2062
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_12

    .line 2063
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2066
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_24
    return-object v3

    :cond_25
    const-string v3, ""

    goto :goto_24
.end method

.method private getExchangeDataMap(IZ)Ljava/util/HashMap;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "bAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IRunnableCallback;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_34

    .line 2233
    iget-object v6, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .line 2235
    .local v3, "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iget-object v6, v3, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2236
    .local v4, "user":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_1c

    .line 2237
    iget-object v0, v3, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .line 2253
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    .end local v4    # "user":Ljava/lang/Integer;
    :goto_30
    return-object v0

    .line 2232
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2242
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_34
    if-nez p2, :cond_38

    move-object v0, v5

    .line 2243
    goto :goto_30

    .line 2246
    :cond_38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2247
    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/IRunnableCallback;>;"
    new-instance v3, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    invoke-direct {v3, p0, v5}, Lcom/android/server/RCPManagerService$ExchangeDataInfo;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    .line 2249
    .restart local v3    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iput-object v0, v3, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .line 2251
    iget-object v5, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method private getRCPProxyPackageForUser(I)Ljava/lang/String;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2328
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RCPProxyForUser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2330
    .local v4, "rcpProxySFs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 2332
    .local v2, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "com.samsung.knox.rcp.components"

    .line 2333
    .local v3, "rcpProxy":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_68

    .line 2334
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2335
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 2337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "RCPProxy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2338
    iget-boolean v5, p0, mBridgeRedesign:Z

    if-eqz v5, :cond_2e

    .line 2339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rcpProxy":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2346
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "rcpProxy":Ljava/lang/String;
    :cond_68
    return-object v3
.end method

.method private getUserAndPersonasIds(I)Ljava/util/ArrayList;
    .registers 12
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2191
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 2193
    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v4

    .line 2195
    .local v4, "parentUser":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v6

    .line 2201
    .local v6, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_27

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 2202
    :cond_27
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_40
    :goto_40
    return-object v0

    .line 2209
    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v4    # "parentUser":I
    .restart local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_41
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 2210
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v7, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5a} :catch_5b

    goto :goto_45

    .line 2214
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_5b
    move-exception v1

    .line 2215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method private getUserOrItsPersonasIds(I)[I
    .registers 15
    .param p1, "callingUserId"    # I

    .prologue
    const/4 v9, 0x0

    .line 1878
    :try_start_1
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1880
    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    .line 1884
    .local v6, "parentUser":I
    if-eq v6, p1, :cond_19

    .line 1886
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    aput v6, v4, v10

    .line 1913
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    :goto_18
    return-object v4

    .line 1891
    .restart local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v6    # "parentUser":I
    :cond_19
    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v8

    .line 1894
    .local v8, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_25

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1895
    :cond_25
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v9

    .line 1898
    goto :goto_18

    .line 1901
    :cond_40
    const/4 v1, 0x0

    .line 1902
    .local v1, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [I

    .line 1904
    .local v4, "ids":[I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 1905
    .local v7, "personaInfo":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v10, v7, Landroid/content/pm/PersonaInfo;->id:I

    aput v10, v4, v2

    move v2, v1

    .line 1906
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_4c

    .line 1907
    .end local v7    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_60
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getUserOrItsPersonasIds(): size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_7a

    goto :goto_18

    .line 1909
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":[I
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    .end local v8    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_7a
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "getUserOrItsPersonasIds(): Rorre..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v9

    .line 1913
    goto :goto_18
.end method

.method private handleFOTAUpgradeTo_2_5()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 796
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "----- Handling FOTA Upgrade to Knox 2.5 onwards -----"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "RCPProxyForUser0"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 801
    .local v4, "rCPProxyScanSP":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1d

    .line 802
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 805
    :cond_1d
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 809
    .local v1, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v1, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 810
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_67

    .line 811
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 812
    .local v2, "persona":Landroid/content/pm/PersonaInfo;
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RCPProxyForUser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 814
    if-eqz v4, :cond_32

    .line 815
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_32

    .line 819
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_67
    return-void
.end method

.method public static isAllowedtoLaunch(Landroid/content/pm/ActivityInfo;)Z
    .registers 23
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2455
    const/16 v19, 0x31

    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "com.android.contacts"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, "com.android.mms"

    aput-object v20, v3, v19

    const/16 v19, 0x2

    const-string v20, "com.android.phone"

    aput-object v20, v3, v19

    const/16 v19, 0x3

    const-string v20, "com.android.incallui"

    aput-object v20, v3, v19

    const/16 v19, 0x4

    const-string v20, "com.samsung.contacts"

    aput-object v20, v3, v19

    const/16 v19, 0x5

    const-string v20, "com.sec.android.inputmethod"

    aput-object v20, v3, v19

    const/16 v19, 0x6

    const-string v20, "com.samsung.knox.rcp.components"

    aput-object v20, v3, v19

    const/16 v19, 0x7

    const-string v20, "com.android.settings"

    aput-object v20, v3, v19

    const/16 v19, 0x8

    const-string v20, "com.android.systemui"

    aput-object v20, v3, v19

    const/16 v19, 0x9

    const-string v20, "com.sec.android.app.SecSetupWizard"

    aput-object v20, v3, v19

    const/16 v19, 0xa

    const-string v20, "com.samsung.safetyinformation"

    aput-object v20, v3, v19

    const/16 v19, 0xb

    const-string v20, "com.google.android.gsf"

    aput-object v20, v3, v19

    const/16 v19, 0xc

    const-string v20, "com.sec.android.app.servicemodeapp"

    aput-object v20, v3, v19

    const/16 v19, 0xd

    const-string v20, "android"

    aput-object v20, v3, v19

    const/16 v19, 0xe

    const-string v20, "com.android.server.telecom"

    aput-object v20, v3, v19

    const/16 v19, 0xf

    const-string v20, "com.sec.android.app.taskmanager"

    aput-object v20, v3, v19

    const/16 v19, 0x10

    const-string v20, "com.sec.android.app.controlpanel"

    aput-object v20, v3, v19

    const/16 v19, 0x11

    const-string v20, "com.android.providers.media"

    aput-object v20, v3, v19

    const/16 v19, 0x12

    const-string v20, "com.google.android.marvin.talkback"

    aput-object v20, v3, v19

    const/16 v19, 0x13

    const-string v20, "com.sec.android.app.popupuireceiver"

    aput-object v20, v3, v19

    const/16 v19, 0x14

    const-string v20, "com.samsung.SMT"

    aput-object v20, v3, v19

    const/16 v19, 0x15

    const-string v20, "com.sec.tetheringprovision"

    aput-object v20, v3, v19

    const/16 v19, 0x16

    const-string v20, "com.google.android.gms"

    aput-object v20, v3, v19

    const/16 v19, 0x17

    const-string v20, "com.samsung.android.app.sounddetector"

    aput-object v20, v3, v19

    const/16 v19, 0x18

    const-string v20, "com.samsung.android.app.colorblind"

    aput-object v20, v3, v19

    const/16 v19, 0x19

    const-string v20, "com.samsung.android.app.assistantmenu"

    aput-object v20, v3, v19

    const/16 v19, 0x1a

    const-string v20, "com.samsung.tmowfc.wfcpref"

    aput-object v20, v3, v19

    const/16 v19, 0x1b

    const-string v20, "com.samsung.spg"

    aput-object v20, v3, v19

    const/16 v19, 0x1c

    const-string v20, "com.samsung.android.phone"

    aput-object v20, v3, v19

    const/16 v19, 0x1d

    const-string v20, "com.android.nfc"

    aput-object v20, v3, v19

    const/16 v19, 0x1e

    const-string v20, "com.samsung.android.app.talkback"

    aput-object v20, v3, v19

    const/16 v19, 0x1f

    const-string v20, "com.samsung.android.app.screenreader"

    aput-object v20, v3, v19

    const/16 v19, 0x20

    const-string v20, "com.samsung.android.app.advsounddetector"

    aput-object v20, v3, v19

    const/16 v19, 0x21

    const-string v20, "com.samsung.android.sm"

    aput-object v20, v3, v19

    const/16 v19, 0x22

    const-string v20, "com.sec.android.app.simsettingmgr"

    aput-object v20, v3, v19

    const/16 v19, 0x23

    const-string v20, "com.samsung.sdm"

    aput-object v20, v3, v19

    const/16 v19, 0x24

    const-string/jumbo v20, "jp.softbank.mb.mail"

    aput-object v20, v3, v19

    const/16 v19, 0x25

    const-string v20, "com.kddi.android.cmail"

    aput-object v20, v3, v19

    const/16 v19, 0x26

    const-string v20, "ait.com.vn.main.plus.lte"

    aput-object v20, v3, v19

    const/16 v19, 0x27

    const-string v20, "com.sec.android.app.wfdbroker"

    aput-object v20, v3, v19

    const/16 v19, 0x28

    const-string v20, "com.policydm"

    aput-object v20, v3, v19

    const/16 v19, 0x29

    const-string v20, "com.samsung.android.securitylogagent"

    aput-object v20, v3, v19

    const/16 v19, 0x2a

    const-string v20, "com.samsung.android.universalswitch"

    aput-object v20, v3, v19

    const/16 v19, 0x2b

    const-string v20, "com.google.android.tts"

    aput-object v20, v3, v19

    const/16 v19, 0x2c

    const-string v20, "com.samsung.knox.appsupdateagent"

    aput-object v20, v3, v19

    const/16 v19, 0x2d

    const-string v20, "com.google.android.packageinstaller"

    aput-object v20, v3, v19

    const/16 v19, 0x2e

    const-string v20, "com.sec.knox.switcher"

    aput-object v20, v3, v19

    const/16 v19, 0x2f

    const-string v20, "com.sec.android.app.setupwizard"

    aput-object v20, v3, v19

    const/16 v19, 0x30

    const-string v20, "com.samsung.vvm"

    aput-object v20, v3, v19

    .line 2493
    .local v3, "allowedapps":[Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "com.android.contacts.activities.GroupDetailActivity"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    const-string v20, "com.samsung.contacts.emergency.EmergencyGroupDetailActivity"

    aput-object v20, v12, v19

    .line 2498
    .local v12, "notAllowedComps":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v19, sContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 2499
    .local v7, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    sget-object v19, sContext:Landroid/content/Context;

    const-string/jumbo v20, "persona"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    .line 2500
    .local v14, "persona":Landroid/os/PersonaManager;
    const/4 v15, 0x0

    .line 2501
    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2503
    .local v10, "ident":J
    const/16 v19, 0x1

    :try_start_15a
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .line 2504
    if-eqz v15, :cond_168

    invoke-interface {v15}, Ljava/util/List;->size()I
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_165} :catch_226
    .catchall {:try_start_15a .. :try_end_165} :catchall_22f

    move-result v19

    if-nez v19, :cond_16e

    .line 2505
    :cond_168
    const/16 v19, 0x1

    .line 2510
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    :goto_16d
    return v19

    .line 2510
    :cond_16e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2512
    :goto_171
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PersonaInfo;

    .line 2514
    .local v16, "pi":Landroid/content/pm/PersonaInfo;
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    if-eqz v19, :cond_187

    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1c1

    .line 2516
    :cond_187
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .line 2518
    .local v13, "ownerUid":I
    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v17

    .line 2520
    .local v17, "pkgName":Ljava/lang/String;
    if-eqz v17, :cond_1c1

    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c1

    .line 2521
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 2522
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    const-string v20, "com.sec.android.fotaclient"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    const-string v20, "com.wssyncmldm"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    .end local v13    # "ownerUid":I
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_1c1
    invoke-static {v14}, isKioskLocked(Landroid/os/PersonaManager;)Z

    move-result v19

    if-eqz v19, :cond_234

    .line 2528
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2529
    .local v4, "allowedappswhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .line 2533
    .restart local v13    # "ownerUid":I
    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v17

    .line 2534
    .restart local v17    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    const-string v19, "com.sec.android.fotaclient"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    const-string v19, "com.wssyncmldm"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    const-string v19, "com.android.incallui"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2538
    const-string v19, "com.android.server.telecom"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    const-string v19, "com.android.phone"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    const-string v19, "com.sec.knox.switcher"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2542
    if-eqz v4, :cond_28c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28c

    const/16 v19, 0x1

    goto/16 :goto_16d

    .line 2507
    .end local v4    # "allowedappswhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "ownerUid":I
    .end local v16    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v17    # "pkgName":Ljava/lang/String;
    :catch_226
    move-exception v6

    .line 2508
    .local v6, "e":Ljava/lang/Exception;
    :try_start_227
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22a
    .catchall {:try_start_227 .. :try_end_22a} :catchall_22f

    .line 2510
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_171

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_22f
    move-exception v19

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 2545
    .restart local v16    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_234
    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    if-eqz v19, :cond_24a

    sget-object v19, kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24a

    .line 2547
    const/16 v19, 0x1

    goto/16 :goto_16d

    .line 2549
    :cond_24a
    move-object v5, v12

    .local v5, "arr$":[Ljava/lang/String;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_24d
    if-ge v8, v9, :cond_270

    aget-object v18, v5, v8

    .line 2550
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_26d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_26d

    .line 2552
    const/16 v19, 0x0

    goto/16 :goto_16d

    .line 2549
    :cond_26d
    add-int/lit8 v8, v8, 0x1

    goto :goto_24d

    .line 2556
    .end local v18    # "str":Ljava/lang/String;
    :cond_270
    move-object v5, v3

    array-length v9, v5

    const/4 v8, 0x0

    :goto_273
    if-ge v8, v9, :cond_28c

    aget-object v2, v5, v8

    .line 2557
    .local v2, "allowedApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_289

    .line 2559
    const/16 v19, 0x1

    goto/16 :goto_16d

    .line 2556
    :cond_289
    add-int/lit8 v8, v8, 0x1

    goto :goto_273

    .line 2565
    .end local v2    # "allowedApp":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_28c
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "blocked by isAllowedtoLaunch() : aInfo.packageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const/16 v19, 0x0

    goto/16 :goto_16d
.end method

.method private isGearBTDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 1138
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "isGearBTDevice"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 1141
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_10

    .line 1154
    :goto_f
    return v2

    .line 1145
    :cond_10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 1146
    .local v1, "btclassvalue":I
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btclassvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/16 v3, 0x704

    if-ne v1, v3, :cond_3a

    .line 1149
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "it is GearDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v2, 0x1

    goto :goto_f

    .line 1153
    :cond_3a
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "isGearBTDevice return false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static isKioskLocked(Landroid/os/PersonaManager;)Z
    .registers 5
    .param p0, "mPm"    # Landroid/os/PersonaManager;

    .prologue
    const/4 v1, 0x0

    .line 2573
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2574
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v0

    .line 2575
    .local v0, "personaid":[I
    if-eqz v0, :cond_41

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-nez v2, :cond_39

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-nez v2, :cond_39

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2579
    :cond_39
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Kiosk exists and it is locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const/4 v1, 0x1

    .line 2583
    .end local v0    # "personaid":[I
    :cond_41
    return v1
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 7

    .prologue
    .line 722
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "RCP.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_7
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 725
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 727
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_1e

    .line 728
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "RCP.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_1d
    return-void

    .line 733
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1e
    new-instance v3, Lcom/android/server/RCPManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/RCPManagerService$4;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_1d

    .line 753
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_27
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private registerPersonaObserver(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 2416
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2417
    new-instance v0, Lcom/android/server/RCPManagerService$PersonaObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/16 v2, 0xf

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/RCPManagerService$PersonaObserver;-><init>(Lcom/android/server/RCPManagerService;Landroid/content/Context;II)V

    .line 2422
    .local v0, "observer":Lcom/android/server/RCPManagerService$PersonaObserver;
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    .end local v0    # "observer":Lcom/android/server/RCPManagerService$PersonaObserver;
    :cond_1e
    return-void
.end method

.method private removeExchangeDataInfo(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 2257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_35

    .line 2258
    iget-object v4, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .line 2259
    .local v2, "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iget-object v4, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2260
    .local v3, "user":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1b

    .line 2261
    iget-object v4, p0, mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2257
    .end local v3    # "user":Ljava/lang/Integer;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2266
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_35
    return-void
.end method

.method private scanAndStartBridgeProxy(I)V
    .registers 26
    .param p1, "userId"    # I

    .prologue
    .line 1451
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_24

    .line 1452
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " scanAndStartBridgeProxy called for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "persona"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    .line 1456
    .local v14, "personaManager":Landroid/os/PersonaManager;
    if-eqz v14, :cond_a4

    .line 1461
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 1462
    .local v11, "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_77

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    move/from16 v21, v0

    if-eqz v21, :cond_77

    .line 1463
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_76

    .line 1464
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "userId :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ,mPersonaInfo.isBBCContainer :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .end local v11    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_76
    :goto_76
    return-void

    .line 1468
    .restart local v11    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_77
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_193

    .line 1469
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a4

    .line 1470
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    .end local v11    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_a4
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RCPProxyForUser"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1504
    .local v19, "rCPProxyScanSP":Landroid/content/SharedPreferences;
    const-string v21, "Enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_76

    .line 1507
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v16

    .line 1509
    .local v16, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_226

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_105

    .line 1511
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " scanAndStartBridgeProxy prefs.size() "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_105
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_10d
    :goto_10d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_76

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1514
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_166

    .line 1515
    const-string v22, "Bridge_PROXY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "prefs key : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " value : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_166
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_10d

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_10d

    .line 1518
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "RCPProxy"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10d

    .line 1520
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, bindToBridgeProxy(ILjava/lang/String;)V

    goto/16 :goto_10d

    .line 1474
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v19    # "rCPProxyScanSP":Landroid/content/SharedPreferences;
    .restart local v11    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_193
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v12

    .line 1475
    .local v12, "parentId":I
    move/from16 v0, p1

    if-eq v12, v0, :cond_1c4

    .line 1476
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a4

    .line 1477
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    .line 1482
    :cond_1c4
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v13

    .line 1483
    .local v13, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v13, :cond_1d2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_1ff

    .line 1484
    :cond_1d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_76

    .line 1485
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "scanAndStartBridgeProxy: NOT starting Bridge Proxy for user = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; because it doesn\'t have personas or it is a guest!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 1491
    :cond_1ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a4

    .line 1492
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "scanAndStartBridgeProxy : starting BridgeProxy for owner - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    .line 1528
    .end local v11    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    .end local v12    # "parentId":I
    .end local v13    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v19    # "rCPProxyScanSP":Landroid/content/SharedPreferences;
    :cond_226
    const/16 v8, 0x80

    .line 1529
    .local v8, "flags":I
    :try_start_228
    const-string/jumbo v21, "package"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 1531
    .local v10, "iPM":Landroid/content/pm/IPackageManager;
    move/from16 v0, p1

    invoke-interface {v10, v8, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v20

    .line 1532
    .local v20, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 1533
    .local v4, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_261

    .line 1534
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " scanAndStartBridgeProxy appInfoList.size() "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_261
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1538
    .local v15, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_269
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_76

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;
    :try_end_275
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_275} :catch_2f2

    .line 1540
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 1541
    .local v5, "bundle":Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 1542
    .local v17, "proxyName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1545
    .local v18, "proxyPkg":Ljava/lang/String;
    :try_start_27a
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1546
    if-eqz v5, :cond_287

    .line 1547
    const-string/jumbo v21, "proxyName"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1549
    :cond_287
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_28b
    .catch Ljava/lang/NullPointerException; {:try_start_27a .. :try_end_28b} :catch_2f8
    .catch Landroid/os/RemoteException; {:try_start_27a .. :try_end_28b} :catch_2f2

    .line 1555
    :goto_28b
    if-eqz v17, :cond_269

    if-eqz v18, :cond_269

    :try_start_28f
    const-string v21, "RCPProxy"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_269

    .line 1557
    move-object/from16 v0, p0

    iget-boolean v0, v0, KNOX_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2cd

    .line 1558
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " scanAndStartBridgeProxy proxyName "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " proxyPkg "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_2cd
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1562
    const-string v21, "Enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1563
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, bindToBridgeProxy(ILjava/lang/String;)V
    :try_end_2f0
    .catch Landroid/os/RemoteException; {:try_start_28f .. :try_end_2f0} :catch_2f2

    goto/16 :goto_76

    .line 1566
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v15    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "proxyName":Ljava/lang/String;
    .end local v18    # "proxyPkg":Ljava/lang/String;
    .end local v20    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_2f2
    move-exception v6

    .line 1567
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_76

    .line 1550
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v15    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v17    # "proxyName":Ljava/lang/String;
    .restart local v18    # "proxyPkg":Ljava/lang/String;
    .restart local v20    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_2f8
    move-exception v6

    .line 1551
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_2f9
    const-string v21, "Bridge_PROXY"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " scanAndStartBridgeProxy() Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_2f9 .. :try_end_315} :catch_2f2

    goto/16 :goto_28b
.end method

.method private sendRCPPolicyBroadcastToGearManager(Landroid/content/Context;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personaId"    # I

    .prologue
    .line 1163
    const-string/jumbo v0, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    .line 1164
    .local v0, "NOTIFICATION_POLICY_CHANGED":Ljava/lang/String;
    const-string v1, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    .line 1165
    .local v1, "enforcedPermission":Ljava/lang/String;
    const-string/jumbo v9, "persona"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 1167
    .local v4, "mPm":Landroid/os/PersonaManager;
    if-eqz v4, :cond_84

    .line 1168
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v4, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaPolicyManager;

    .line 1170
    .local v6, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    if-eqz v6, :cond_84

    .line 1171
    const/4 v9, -0x1

    if-ne p2, v9, :cond_60

    .line 1173
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v7

    .line 1175
    .local v7, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v7, :cond_84

    .line 1176
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v2, "i":Landroid/content/Intent;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 1178
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v5, :cond_31

    .line 1179
    iget v9, v5, Landroid/content/pm/PersonaInfo;->id:I

    const-string v10, "Notifications"

    const-string/jumbo v11, "knox-sanitize-data"

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1184
    .local v8, "policy":Ljava/lang/String;
    const-string/jumbo v9, "personaId"

    iget v10, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const-string/jumbo v9, "policy"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v10, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {p1, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_31

    .line 1193
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    .end local v7    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v8    # "policy":Ljava/lang/String;
    :cond_60
    const-string v9, "Notifications"

    const-string/jumbo v10, "knox-sanitize-data"

    invoke-virtual {v6, p2, v9, v10}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1196
    .restart local v8    # "policy":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .restart local v2    # "i":Landroid/content/Intent;
    const-string/jumbo v9, "personaId"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-string/jumbo v9, "policy"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v10, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {p1, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1204
    .end local v2    # "i":Landroid/content/Intent;
    .end local v6    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .end local v8    # "policy":Ljava/lang/String;
    :cond_84
    return-void
.end method

.method private startBridgeProxy(I)V
    .registers 6
    .param p1, "newUserId"    # I

    .prologue
    .line 775
    iget-object v1, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncCallBack;

    .line 777
    .local v0, "callback":Landroid/content/ISyncCallBack;
    if-nez v0, :cond_2e

    .line 778
    iget-object v2, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    monitor-enter v2

    .line 779
    :try_start_11
    iget-object v1, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 780
    iget-object v1, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2b

    .line 782
    invoke-direct {p0, p1}, scanAndStartBridgeProxy(I)V

    .line 793
    :cond_2a
    :goto_2a
    return-void

    .line 781
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1

    .line 784
    :cond_2e
    iget-boolean v1, p0, KNOX_DEBUG:Z

    if-eqz v1, :cond_2a

    .line 785
    const-string v1, "Bridge_PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling doSync() for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " via his ISyncCallBack."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private startKnoxModeSwitcher(Ljava/lang/String;I)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2162
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2164
    .local v4, "uh":Landroid/os/UserHandle;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startKnoxModeSwitcher : - userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2166
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.sec.knox.bridge.receiver.HANDLE_KNOXMODE_SWITCH"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2167
    const-string/jumbo v5, "switch_action"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2168
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2171
    :try_start_3d
    const-string v5, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2173
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2183
    :cond_4a
    :goto_4a
    return-void

    .line 2175
    :cond_4b
    invoke-direct {p0, p2}, getUserAndPersonasIds(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2176
    .local v0, "familyUserId":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_6d
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_6d} :catch_6e

    goto :goto_53

    .line 2180
    .end local v0    # "familyUserId":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_6e
    move-exception v2

    .line 2181
    .local v2, "se":Ljava/lang/SecurityException;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private switchPersonaAndLaunch(ILandroid/content/Intent;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 873
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaAndLaunch() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    if-gez p1, :cond_26

    .line 882
    :goto_25
    return-void

    .line 878
    :cond_26
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 880
    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v0, p1, p2}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    goto :goto_25
.end method

.method private unregisterBridgeProxy(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1990
    iget-boolean v1, p0, KNOX_DEBUG:Z

    if-eqz v1, :cond_22

    .line 1991
    const-string v1, "Bridge_PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- unregisterBridgeProxy : for user - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_22
    iget-object v1, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    .line 1995
    .local v0, "bridgeProxy":Lcom/android/server/bridge/BridgeProxy;
    if-eqz v0, :cond_33

    .line 1996
    invoke-virtual {v0}, Lcom/android/server/bridge/BridgeProxy;->stop()V

    .line 1998
    :cond_33
    iget-object v1, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    iget-object v1, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    iget-object v1, p0, mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    iget-object v1, p0, mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    iget-object v1, p0, mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    invoke-direct {p0, p1}, removeExchangeDataInfo(I)V

    .line 2004
    iget-object v1, p0, mCommandQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    return-void
.end method

.method private unregisterPacakgeReceiver(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 2008
    iget-object v1, p0, mPkgReceiverList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2009
    iget-object v1, p0, mPkgReceiverList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RCPManagerService$PackageReceiver;

    .line 2010
    .local v0, "receiver":Lcom/android/server/RCPManagerService$PackageReceiver;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2011
    iget-object v1, p0, mPkgReceiverList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    .end local v0    # "receiver":Lcom/android/server/RCPManagerService$PackageReceiver;
    :cond_26
    return-void
.end method

.method private updateKnoxInfo()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 959
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateKnoxInfo is called...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 963
    .local v2, "mPersona":Landroid/os/PersonaManager;
    if-eqz v2, :cond_40

    .line 964
    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 965
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 966
    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v6, 0x0

    .line 967
    .local v6, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v5, :cond_3a

    .line 968
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 969
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-boolean v8, v4, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    if-nez v8, :cond_28

    .line 973
    move-object v6, v4

    .line 974
    goto :goto_28

    .line 976
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_3a
    if-nez v6, :cond_41

    .line 977
    sput-object v11, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    .line 978
    sput-object v11, kioskAllowedApps:Ljava/util/ArrayList;

    .line 1022
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v6    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_40
    :goto_40
    return-void

    .line 981
    .restart local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v6    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_41
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v8, :cond_4c

    .line 982
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sput-object v8, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    .line 985
    :cond_4c
    const-string/jumbo v8, "true"

    sget-object v9, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "isKnoxKioskMode"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_69

    .line 987
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "isKnoxKioskMode"

    const-string/jumbo v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_69
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    if-nez v8, :cond_74

    .line 992
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    .line 995
    :cond_74
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_40

    .line 996
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 999
    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget v8, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1003
    .local v3, "ownerUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 1006
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_40

    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    .line 1007
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1008
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    const-string v9, "com.sec.android.fotaclient"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    sget-object v8, kioskAllowedApps:Ljava/util/ArrayList;

    const-string v9, "com.wssyncmldm"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 1014
    .end local v0    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v3    # "ownerUid":I
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v6    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_b0
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v8, :cond_bf

    .line 1015
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "isKnoxKioskMode"

    const-string/jumbo v10, "false"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_bf
    sput-object v11, kioskAllowedApps:Ljava/util/ArrayList;

    goto/16 :goto_40
.end method

.method private updateQuickSwitcher(I)V
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 2435
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotifications() containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2438
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.bridge.receiver.HANDLE_KNOXMODE_SWITCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2439
    const-string/jumbo v2, "switch_action"

    const-string/jumbo v3, "samsung.knox.intent.action.UPDATE_SWITCHER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2443
    :try_start_31
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_38} :catch_39

    .line 2447
    :goto_38
    return-void

    .line 2444
    :catch_39
    move-exception v0

    .line 2445
    .local v0, "se":Ljava/lang/SecurityException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .registers 8
    .param p1, "sessionId"    # J

    .prologue
    .line 2151
    const-string v1, "cancelCopyChunks"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2152
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCopyChunks() sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2155
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->cancelCopyChunks(J)V

    .line 2156
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I

    .prologue
    .line 2085
    const-string v1, "changePermissionMigration"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2086
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePermissionMigration() path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; gid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2090
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 24
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z

    .prologue
    .line 2137
    const-string v3, "copyChunks"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2138
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyChunks() srcContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; srcFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; deleteSrc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    move-object v3, p2

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    .line 2146
    invoke-virtual/range {v2 .. v12}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I

    move-result v3

    return v3
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 8
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2589
    const-string v1, "copyFile"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2590
    const/4 v0, 0x0

    .line 2591
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    invoke-virtual {p0}, getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 2592
    if-eqz v0, :cond_18

    .line 2593
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "copyFile  getRCPInterface not NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 2598
    :goto_17
    return v1

    .line 2597
    :cond_18
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "copyFile  getRCPInterface NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .registers 13
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2029
    const-string v2, "copyFile"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2030
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-string v2, "com.samsung.android.bbc.bbcagent"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, getAppNameByPID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2035
    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 2037
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    const/4 v5, 0x3

    move-object v1, p2

    move v2, p1

    move-object v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v2

    .line 2055
    .end local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    :goto_5d
    return v2

    .line 2042
    :cond_5e
    invoke-static {p2, p1}, Lcom/sec/knox/container/util/PathTranslator;->isPackageDataRelatedPath(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-static {p4, p3}, Lcom/sec/knox/container/util/PathTranslator;->isPackageDataRelatedPath(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 2045
    const-string v2, "TAG"

    const-string v3, "Package data related copy; calling proper delegation method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 2049
    .local v1, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v6, 0x3

    move-object v2, p2

    move v3, p1

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v2

    goto :goto_5d

    .line 2054
    .end local v1    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    :cond_84
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v7

    .line 2055
    .local v7, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v7, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v2

    goto :goto_5d
.end method

.method deleteAllPersonaData(I)V
    .registers 10
    .param p1, "personaID"    # I

    .prologue
    .line 1945
    const/4 v1, 0x0

    .line 1948
    .local v1, "callback":Landroid/content/ISyncCallBack;
    iget-boolean v5, p0, mBridgeRedesign:Z

    if-eqz v5, :cond_17

    .line 1949
    invoke-direct {p0, p1}, unregisterBridgeProxy(I)V

    .line 1950
    invoke-direct {p0, p1}, unregisterPacakgeReceiver(I)V

    .line 1951
    invoke-direct {p0, p1}, clearBridgeProxyPrefs(I)V

    .line 1952
    iget-object v5, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    :cond_17
    iget-object v5, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a7

    .line 1957
    iget-object v5, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1959
    .local v3, "it":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1962
    :try_start_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1963
    .local v4, "pairs":Ljava/util/Map$Entry;
    if-eqz v4, :cond_29

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 1966
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/ISyncCallBack;

    move-object v1, v0

    .line 1967
    if-eqz v1, :cond_29

    .line 1968
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling deletePersonaData() for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via his ISyncCallBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-interface {v1, p1}, Landroid/content/ISyncCallBack;->deletePersonaData(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_72} :catch_73
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_72} :catch_8d

    goto :goto_29

    .line 1973
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :catch_73
    move-exception v2

    .line 1975
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1978
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_8d
    move-exception v2

    .line 1980
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1986
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_a7
    return-void
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2118
    const-string/jumbo v1, "deleteFile"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2119
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteFile() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2122
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public doSyncForSyncer(Ljava/lang/String;I)V
    .registers 15
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    const/4 v11, 0x0

    .line 2618
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "doSyncForSyncer  mSyncerName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , provider ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const/4 v5, 0x0

    .line 2620
    .local v5, "ids":[I
    if-nez p2, :cond_80

    .line 2621
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaManager;

    .line 2623
    .local v7, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v7}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 2629
    .end local v7    # "mPersonaManager":Landroid/os/PersonaManager;
    :goto_36
    if-eqz v5, :cond_a0

    .line 2630
    const/4 v1, 0x0

    .line 2631
    .local v1, "callback":Landroid/content/ISyncCallBack;
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3c
    if-ge v3, v6, :cond_a0

    aget v4, v0, v3

    .line 2632
    .local v4, "id":I
    iget-object v8, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callback":Landroid/content/ISyncCallBack;
    check-cast v1, Landroid/content/ISyncCallBack;

    .line 2633
    .restart local v1    # "callback":Landroid/content/ISyncCallBack;
    if-eqz v1, :cond_7d

    .line 2635
    :try_start_4e
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calling do Sync for mSyncerName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , provider ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,Syncer :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    invoke-interface {v1, p1, p2}, Landroid/content/ISyncCallBack;->doSync(Ljava/lang/String;I)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_7d} :catch_86

    .line 2631
    :cond_7d
    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2625
    .end local v0    # "arr$":[I
    .end local v1    # "callback":Landroid/content/ISyncCallBack;
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v6    # "len$":I
    :cond_80
    const/4 v8, 0x1

    new-array v5, v8, [I

    .end local v5    # "ids":[I
    aput v11, v5, v11

    .restart local v5    # "ids":[I
    goto :goto_36

    .line 2637
    .restart local v0    # "arr$":[I
    .restart local v1    # "callback":Landroid/content/ISyncCallBack;
    .restart local v3    # "i$":I
    .restart local v4    # "id":I
    .restart local v6    # "len$":I
    :catch_86
    move-exception v2

    .line 2638
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "Bridge_PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remote exception thrown by service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 2643
    .end local v0    # "arr$":[I
    .end local v1    # "callback":Landroid/content/ISyncCallBack;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v6    # "len$":I
    :cond_a0
    return-void
.end method

.method public exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 2289
    const-string/jumbo v5, "exchangeData"

    invoke-static {v5}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2292
    const/4 v0, 0x0

    .line 2294
    .local v0, "bd":Landroid/os/Bundle;
    if-eqz p1, :cond_c

    if-gez p2, :cond_26

    .line 2295
    :cond_c
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exchangeData() return false for input param is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :goto_25
    return-object v4

    .line 2301
    :cond_26
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v2

    .line 2304
    .local v2, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/IRunnableCallback;>;"
    if-nez v2, :cond_36

    .line 2305
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "exchangeData() failure , invalid userId"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2309
    :cond_36
    if-eqz p3, :cond_4f

    const-string v4, "RequestProxy"

    const-string v5, "action"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2310
    const-string v4, "callerPkgName"

    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    invoke-direct {p0, p2}, getRCPProxyPackageForUser(I)Ljava/lang/String;

    move-result-object p1

    .line 2314
    :cond_4f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRunnableCallback;

    .line 2316
    .local v1, "cb":Landroid/os/IRunnableCallback;
    if-eqz v1, :cond_61

    if-eqz p3, :cond_61

    .line 2318
    :try_start_5d
    invoke-interface {v1, p3}, Landroid/os/IRunnableCallback;->run(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_63

    move-result-object v0

    :cond_61
    :goto_61
    move-object v4, v0

    .line 2324
    goto :goto_25

    .line 2319
    :catch_63
    move-exception v3

    .line 2320
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .registers 10
    .param p1, "command"    # Landroid/app/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    const-string/jumbo v5, "executeCommandForPersona"

    invoke-static {v5}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 827
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->packageToLaunch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 831
    .local v1, "mPm":Landroid/os/PersonaManager;
    const/4 v4, 0x0

    .line 834
    .local v4, "parsedIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 836
    .local v2, "ident":J
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v1, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 837
    iget-object v5, p0, mCommandQueue:Ljava/util/Map;

    iget v6, p1, Landroid/app/Command;->personaId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_5b
    :goto_5b
    if-eqz v4, :cond_62

    .line 864
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-direct {p0, v5, v4}, switchPersonaAndLaunch(ILandroid/content/Intent;)V

    .line 866
    :cond_62
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "executecommand is done."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    return-void

    .line 839
    :cond_6e
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    if-eqz v5, :cond_84

    .line 841
    :try_start_72
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_78
    .catch Ljava/net/URISyntaxException; {:try_start_72 .. :try_end_78} :catch_7a

    move-result-object v4

    goto :goto_5b

    .line 842
    :catch_7a
    move-exception v0

    .line 843
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to parse launch intent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 845
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_84
    const-string/jumbo v5, "launchIntent"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 846
    if-nez v4, :cond_5b

    .line 847
    iget-object v4, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    goto :goto_5b

    .line 849
    :cond_94
    const-string/jumbo v5, "launchNotification"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 850
    iget-object v5, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_5b

    .line 851
    if-nez v4, :cond_aa

    .line 852
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "parsedIntent":Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 854
    .restart local v4    # "parsedIntent":Landroid/content/Intent;
    :cond_aa
    const-string/jumbo v5, "launchContentIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string/jumbo v5, "pendingIntent"

    iget-object v6, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 858
    const-string/jumbo v5, "intent"

    iget-object v6, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5b
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 949
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 953
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "finalize() Unregistering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-super {p0}, Landroid/os/IRCPManager$Stub;->finalize()V

    .line 955
    return-void
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 12
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1816
    const-string/jumbo v7, "getCallerInfo"

    invoke-static {v7}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1817
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCallerInfo() called for contactRefUriAsString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v7, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    if-eqz v7, :cond_2c

    iget-object v7, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1821
    :cond_2c
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCallerInfo(): mBridgeProviderUserMap is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 1871
    :goto_35
    return-object v5

    .line 1826
    :cond_36
    iget-object v7, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1828
    .local v2, "iteratorPersonaIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 1830
    .local v0, "callingUserId":Ljava/lang/Integer;
    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 1831
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1832
    .local v3, "personaId":Ljava/lang/Integer;
    if-eqz v3, :cond_49

    .line 1834
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_7b

    .line 1835
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCallerInfo(): Skipping for itself: the callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1841
    :cond_7b
    :try_start_7b
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCallerInfo(): before call to getCallerInfoDetails() for personaId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v7, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IProviderCallBack;

    .line 1846
    .local v4, "providerCallBack":Landroid/content/IProviderCallBack;
    if-eqz v4, :cond_49

    .line 1849
    invoke-interface {v4, p1}, Landroid/content/IProviderCallBack;->getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v5

    .line 1851
    .local v5, "result":Landroid/content/CustomCursor;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCallerInfo() calles to getCallerInfoDetails(): result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/content/CustomCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_49

    .line 1856
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    .line 1857
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Found first valid record; getCallerInfo(): result != null && result.getCount() > 0; "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_d1} :catch_d3

    goto/16 :goto_35

    .line 1862
    .end local v4    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v5    # "result":Landroid/content/CustomCursor;
    :catch_d3
    move-exception v1

    .line 1863
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCallerInfo(): Remote exception thrown by service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 1868
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "personaId":Ljava/lang/Integer;
    :cond_ef
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCallerInfo(): DONE... no valid record found.. returns null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 1871
    goto/16 :goto_35
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2126
    const-string/jumbo v1, "getFileInfo"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2127
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileInfo() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2131
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2107
    const-string/jumbo v1, "getFiles"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2108
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFiles() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2111
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1646
    const-string/jumbo v6, "getPolicy"

    invoke-static {v6}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1647
    const-wide/16 v4, 0x0

    .line 1648
    .local v4, "token":J
    const/4 v2, 0x0

    .line 1650
    .local v2, "policy":Ljava/lang/String;
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1651
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicy: Policy checking block entered for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; for user/persona = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; Policy = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string/jumbo v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 1656
    .local v1, "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1658
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicy: policy value returned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6c} :catch_75
    .catchall {:try_start_b .. :try_end_6c} :catchall_9b

    .line 1665
    cmp-long v6, v4, v10

    if-eqz v6, :cond_73

    .line 1666
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_73
    move-object v3, v2

    .line 1668
    .end local v1    # "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    .end local v2    # "policy":Ljava/lang/String;
    .local v3, "policy":Ljava/lang/String;
    :goto_74
    return-object v3

    .line 1659
    .end local v3    # "policy":Ljava/lang/String;
    .restart local v2    # "policy":Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    :try_start_76
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicy: personaPolicyMgrSer.getRCPDataPolicyForUser threw an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_9b

    .line 1665
    cmp-long v6, v4, v10

    if-eqz v6, :cond_99

    .line 1666
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_99
    move-object v3, v2

    .line 1668
    .end local v2    # "policy":Ljava/lang/String;
    .restart local v3    # "policy":Ljava/lang/String;
    goto :goto_74

    .line 1665
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "policy":Ljava/lang/String;
    .restart local v2    # "policy":Ljava/lang/String;
    :catchall_9b
    move-exception v6

    cmp-long v6, v4, v10

    if-eqz v6, :cond_a3

    .line 1666
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a3
    move-object v3, v2

    .line 1668
    .end local v2    # "policy":Ljava/lang/String;
    .restart local v3    # "policy":Ljava/lang/String;
    goto :goto_74
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 6

    .prologue
    .line 1803
    const-string/jumbo v2, "getRCPInterface"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1804
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRCPInterface My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-static {}, getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1807
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRCPInterface  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getRCPInterface getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1812
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPInterface;

    return-object v2
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .registers 6

    .prologue
    .line 1789
    const-string/jumbo v2, "getRCPProxy"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1791
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRCPProxy My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-static {}, getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1794
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRCPProxy  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getRCPProxy getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1799
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPGlobalContactsDir;

    return-object v2
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string/jumbo v1, "handleShortcut"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 889
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in createShortcut() for packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .line 895
    .local v0, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v0, :cond_3d

    .line 896
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryAllProviders():  providerCallBack is not register for 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_3c
    return-void

    .line 902
    :cond_3d
    :try_start_3d
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "createShortcut(): Found a provider to query. Calling it now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 904
    invoke-interface/range {v0 .. v6}, Landroid/content/IProviderCallBack;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4e} :catch_4f

    goto :goto_3c

    .line 906
    :catch_4f
    move-exception v7

    .line 907
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createShortcut(): Remote exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2097
    const-string/jumbo v1, "isFileExist"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2098
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileExist() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2102
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 9
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2072
    const-string/jumbo v1, "moveFile"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2073
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveFile() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2078
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 8
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2603
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "moveFilesForApp"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2604
    const/4 v0, 0x0

    .line 2605
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    invoke-virtual {p0}, getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 2606
    if-eqz v0, :cond_1a

    .line 2607
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "moveFilesForApp  getRCPInterface not NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    invoke-interface {v0, p1, p2, p3}, Landroid/content/IRCPInterface;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v2

    .line 2612
    :goto_19
    return-wide v2

    .line 2611
    :cond_1a
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "moveFilesForApp  getRCPInterface NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const-wide/16 v2, -0x1

    goto :goto_19
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v2, "queryProvider"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 285
    move/from16 v9, p3

    .line 287
    .local v9, "callingUserId":I
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " calling queryAllProviders providerName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resourceName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getUserOrItsPersonasIds(I)[I

    move-result-object v14

    .line 291
    .local v14, "ids":[I
    if-nez v14, :cond_40

    .line 292
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryAllProviders ids[] form getUserOrItsPersonasIds() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v10, 0x0

    .line 350
    :goto_3f
    return-object v10

    .line 297
    :cond_40
    array-length v15, v14

    .line 298
    .local v15, "idsLength":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v10, "customCursorsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_47
    if-ge v12, v15, :cond_11d

    .line 304
    aget v13, v14, v12

    .line 305
    .local v13, "id":I
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllProviders(): process id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .line 309
    .local v1, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v1, :cond_91

    .line 310
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllProviders():  providerCallBack is not register for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_8e
    add-int/lit8 v12, v12, 0x1

    goto :goto_47

    .line 317
    :cond_91
    :try_start_91
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryAllProviders(): Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 320
    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v16

    .line 324
    .local v16, "resultCursor":Landroid/content/CustomCursor;
    if-nez v16, :cond_111

    .line 325
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllProviders() resultCursor is null for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_c6
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllProviders(): resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_e6} :catch_e7

    goto :goto_8e

    .line 339
    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :catch_e7
    move-exception v11

    .line 340
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllProviders(): Remote exception thrown by service for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8e

    .line 330
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_111
    :try_start_111
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    .line 331
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/CustomCursor;->setAutoClose(Z)V
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_11c} :catch_e7

    goto :goto_c6

    .line 348
    .end local v1    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v13    # "id":I
    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_11d
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryAllProviders(): DONE..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 26
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v2, "queryProvider"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 237
    invoke-static {}, getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    .line 238
    .local v16, "user":Landroid/os/UserHandle;
    new-instance v17, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 239
    .local v17, "userId":Ljava/lang/Integer;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryProvider My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 243
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PersonaManagerService;

    .line 245
    .local v14, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v12, 0x0

    .line 246
    .local v12, "isPersona":Z
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 247
    .local v10, "currentUser":I
    const/4 v13, 0x0

    .line 248
    .local v13, "parentUser":I
    if-eqz v14, :cond_5d

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v12

    .line 250
    invoke-virtual {v14, v10}, Lcom/android/server/pm/PersonaManagerService;->getParentUserForPersona(I)I

    move-result v13

    .line 253
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .line 255
    .local v1, "value":Landroid/content/IProviderCallBack;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryProvider():  mBridgeProviderUserMap.get(): value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v1, :cond_97

    .line 258
    const/4 v15, 0x0

    .line 276
    :goto_96
    return-object v15

    .line 260
    :cond_97
    :try_start_97
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 261
    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v15

    .line 264
    .local v15, "resultCursor":Landroid/content/CustomCursor;
    if-nez v15, :cond_b9

    .line 265
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, " resultCursor is null  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_b9
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_d1} :catch_d2

    goto :goto_96

    .line 269
    .end local v15    # "resultCursor":Landroid/content/CustomCursor;
    :catch_d2
    move-exception v11

    .line 270
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryProvider Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v15, 0x0

    goto :goto_96
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;I)V
    .registers 9
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    const-string/jumbo v3, "registerCommandExe"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 390
    iget-boolean v3, p0, KNOX_DEBUG:Z

    if-eqz v3, :cond_3c

    .line 391
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCommandExe My Context is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCommandExe  User calling is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_3c
    iget-object v3, p0, mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v3, p0, mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ICommandExeCallBack;

    .line 398
    .local v1, "commandExeCallback":Landroid/content/ICommandExeCallBack;
    if-eqz v1, :cond_d1

    .line 399
    iget-boolean v3, p0, KNOX_DEBUG:Z

    if-eqz v3, :cond_75

    .line 400
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling exceuteCommand() for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " via his ICommandExeCallBack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_75
    :try_start_75
    iget-object v3, p0, mCommandQueue:Ljava/util/Map;

    if-eqz v3, :cond_d1

    iget-object v3, p0, mCommandQueue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 404
    iget-object v3, p0, mCommandQueue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Command;

    .line 405
    .local v0, "command":Landroid/app/Command;
    iget-boolean v3, p0, KNOX_DEBUG:Z

    if-eqz v3, :cond_ad

    .line 406
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking packages in command queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_ad
    if-eqz v0, :cond_d1

    .line 408
    iget-boolean v3, p0, KNOX_DEBUG:Z

    if-eqz v3, :cond_ce

    .line 409
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg in commandqueue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_ce
    invoke-interface {v1, v0}, Landroid/content/ICommandExeCallBack;->execute(Landroid/app/Command;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_d1} :catch_d2

    .line 418
    .end local v0    # "command":Landroid/app/Command;
    :cond_d1
    :goto_d1
    return-void

    .line 413
    :catch_d2
    move-exception v2

    .line 414
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Bridge_PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception thrown by service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1
.end method

.method public registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2270
    const-string/jumbo v2, "registerExchangeData"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2272
    if-eqz p1, :cond_b

    if-nez p2, :cond_19

    .line 2273
    :cond_b
    iget-boolean v1, p0, KNOX_DEBUG:Z

    if-eqz v1, :cond_17

    .line 2274
    const-string v1, "Bridge_PROXY"

    const-string/jumbo v2, "registerExchangeData() return false for input null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_17
    const/4 v1, 0x0

    .line 2284
    :cond_18
    :goto_18
    return v1

    .line 2278
    :cond_19
    invoke-direct {p0, p3, v1}, getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v0

    .line 2279
    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/IRunnableCallback;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    iget-boolean v2, p0, KNOX_DEBUG:Z

    if-eqz v2, :cond_18

    .line 2282
    const-string v2, "Bridge_PROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerExchangeData User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;

    .prologue
    .line 2350
    const-string v0, "com.samsung.knox.rcp.components"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2354
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Blocked!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMonitorCb cb registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :goto_17
    const/4 v0, 0x1

    return v0

    .line 2357
    :cond_19
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMonitorCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public registerObserver(Ljava/lang/String;I)V
    .registers 5
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    .line 2646
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2647
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/BridgeProxy;->registerObserver(Ljava/lang/String;)V

    .line 2649
    :cond_1f
    return-void
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;
    .param p3, "userId"    # I

    .prologue
    .line 355
    const-string/jumbo v0, "registerProvider"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 356
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 357
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProvider My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProvider  User calling is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3c
    iget-object v0, p0, mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V
    .registers 6
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    const-string/jumbo v0, "registerRCPGlobalContactsDir"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 379
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 380
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPGlobalContactsDir My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSync  User calling is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3c
    iget-object v0, p0, mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .registers 6
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    const-string/jumbo v0, "registerRCPInterface"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 424
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 425
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPInterface My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPInterface  User calling is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_3c
    iget-object v0, p0, mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public registerSync(Landroid/content/ISyncCallBack;I)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncCallBack;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    const-string/jumbo v0, "registerSync"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 367
    iget-boolean v0, p0, KNOX_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 368
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSync  User calling is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "Bridge_PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSync My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3c
    iget-object v0, p0, mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method scanAndStartRCPProxy(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1574
    iget-boolean v0, p0, mBridgeRedesign:Z

    if-eqz v0, :cond_7

    .line 1575
    invoke-direct {p0, p1}, scanAndStartBridgeProxy(I)V

    .line 1579
    :cond_7
    return-void
.end method

.method public startRCPProxy(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 764
    const-string/jumbo v0, "startRCPProxy"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 766
    iget-boolean v0, p0, mBridgeRedesign:Z

    if-eqz v0, :cond_d

    .line 767
    invoke-direct {p0, p1}, startBridgeProxy(I)V

    .line 771
    :cond_d
    return-void
.end method

.method public switchPersona(I)V
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1634
    const-string/jumbo v1, "switchPersona"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1635
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchToUser() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    if-gez p1, :cond_22

    .line 1643
    :goto_21
    return-void

    .line 1639
    :cond_22
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1641
    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public unRegisterObserver(Ljava/lang/String;I)V
    .registers 5
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    .line 2652
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2653
    iget-object v0, p0, mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V

    .line 2655
    :cond_1f
    return-void
.end method

.method public unregisterObserver(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 2427
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RCPManagerService$PersonaObserver;

    .line 2428
    .local v0, "observer":Lcom/android/server/RCPManagerService$PersonaObserver;
    if-eqz v0, :cond_1a

    .line 2429
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    invoke-virtual {v0}, Lcom/android/server/RCPManagerService$PersonaObserver;->unregisterPersonaObserver()V

    .line 2432
    :cond_1a
    return-void
.end method
