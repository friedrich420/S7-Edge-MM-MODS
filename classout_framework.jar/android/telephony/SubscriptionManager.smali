.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CHANNEL_60_ALERT:Ljava/lang/String; = "enable_channel_60_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_INDEX:I = 0x0

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = 0x7ffffffb

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final INVALID_SUB_ID:J = -0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 466
    return-void
.end method

.method public static activateSubId(I)V
    .registers 4
    .param p0, "subId"    # I

    .prologue
    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 1471
    :try_start_16
    invoke-static {}, getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->activateSubId(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1475
    :goto_1d
    return-void

    .line 1472
    :catch_1e
    move-exception v0

    .line 1473
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method public static deactivateSubId(I)V
    .registers 4
    .param p0, "subId"    # I

    .prologue
    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 1481
    :try_start_16
    invoke-static {}, getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->deactivateSubId(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1485
    :goto_1d
    return-void

    .line 1482
    :catch_1e
    move-exception v0

    .line 1483
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .registers 8
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1394
    invoke-static {p0, p1, p3}, getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 1397
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_10

    move-result v3

    if-ne v3, v2, :cond_e

    .line 1402
    :goto_d
    return v2

    .line 1397
    :cond_e
    const/4 v2, 0x0

    goto :goto_d

    .line 1398
    :catch_10
    move-exception v0

    .line 1399
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_16
    move v2, p2

    .line 1402
    goto :goto_d
.end method

.method public static getDefaultDataSubId()I
    .registers 3

    .prologue
    .line 1124
    const/4 v1, -0x1

    .line 1127
    .local v1, "subId":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1128
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1129
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1136
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 1131
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public static getDefaultSmsSubId()I
    .registers 3

    .prologue
    .line 1084
    const/4 v1, -0x1

    .line 1087
    .local v1, "subId":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1088
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1089
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1096
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 1091
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public static getDefaultSubId()I
    .registers 5

    .prologue
    .line 987
    const/4 v2, -0x1

    .line 990
    .local v2, "subId":I
    :try_start_1
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 991
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_12

    .line 992
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I

    move-result v2

    .line 1007
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_11
    return v2

    .line 996
    .restart local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    const-string v3, "getDefaultSubId(): Fail! iSub is null"

    invoke-static {v3}, logd(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_11

    .line 999
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_18
    move-exception v0

    .line 1001
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultSubId(): Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, logd(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static getDefaultVoicePhoneId()I
    .registers 1

    .prologue
    .line 1047
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .registers 3

    .prologue
    .line 1012
    const/4 v1, -0x1

    .line 1015
    .local v1, "subId":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1016
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1017
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1024
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 1019
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method private static getISubInfo()Lcom/android/internal/telephony/ISub;
    .registers 1

    .prologue
    .line 1523
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .registers 7
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1415
    invoke-static {p0, p1, p3}, getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 1418
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result p2

    .line 1423
    .end local p2    # "defValue":I
    :cond_a
    :goto_a
    return p2

    .line 1419
    .restart local p2    # "defValue":I
    :catch_b
    move-exception v0

    .line 1420
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getPhoneId(I)I
    .registers 4
    .param p0, "subId"    # I

    .prologue
    .line 953
    invoke-static {p0}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 957
    const/4 v1, -0x1

    .line 972
    :cond_7
    :goto_7
    return v1

    .line 960
    :cond_8
    const/4 v1, -0x1

    .line 963
    .local v1, "result":I
    :try_start_9
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 964
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_7

    .line 965
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_7

    .line 967
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_1a
    move-exception v2

    goto :goto_7
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1434
    invoke-static {p0}, from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1437
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1438
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1439
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1440
    if-eqz v4, :cond_26

    .line 1441
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 1442
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1444
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1445
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1446
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1447
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .registers 5
    .param p0, "slotIdx"    # I

    .prologue
    .line 1331
    const/4 v1, 0x0

    .line 1334
    .local v1, "simState":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1335
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1336
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_32

    move-result v1

    .line 1340
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimStateForSlotIdx: simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 1341
    return v1

    .line 1338
    :catch_32
    move-exception v2

    goto :goto_11
.end method

.method public static getSlotId(I)I
    .registers 4
    .param p0, "subId"    # I

    .prologue
    .line 906
    invoke-static {p0}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 912
    :cond_6
    const/4 v1, -0x1

    .line 915
    .local v1, "result":I
    :try_start_7
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 916
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 917
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_18

    move-result v1

    .line 923
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    :goto_17
    return v1

    .line 919
    :catch_18
    move-exception v2

    goto :goto_17
.end method

.method public static getSubId(I)[I
    .registers 5
    .param p0, "slotId"    # I

    .prologue
    .line 929
    invoke-static {p0}, isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubId]- fail, slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getSimCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 934
    const/4 v1, 0x0

    .line 948
    :cond_2f
    :goto_2f
    return-object v1

    .line 937
    :cond_30
    const/4 v1, 0x0

    .line 940
    .local v1, "subId":[I
    :try_start_31
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 941
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2f

    .line 942
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_42

    move-result-object v1

    goto :goto_2f

    .line 944
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_42
    move-exception v2

    goto :goto_2f
.end method

.method public static getSubState(I)I
    .registers 4
    .param p0, "subId"    # I

    .prologue
    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 1490
    :try_start_16
    invoke-static {}, getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubState(I)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result v1

    .line 1492
    :goto_1e
    return v1

    .line 1491
    :catch_1f
    move-exception v0

    .line 1492
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public static getSubState(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1508
    long-to-int v0, p0

    .line 1509
    .local v0, "sub":I
    invoke-static {v0}, getSubState(I)I

    move-result v1

    return v1
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1371
    const/4 v1, 0x0

    .line 1373
    .local v1, "resultValue":Ljava/lang/String;
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1374
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_15

    .line 1375
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, p1, v2}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v1

    .line 1381
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_15
    :goto_15
    return-object v1

    .line 1378
    :catch_16
    move-exception v2

    goto :goto_15
.end method

.method public static isSMSPromptEnabled()Z
    .registers 2

    .prologue
    .line 1054
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1055
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 1056
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isSMSPromptEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 1061
    :goto_10
    return v1

    .line 1058
    :catch_11
    move-exception v1

    .line 1061
    :cond_12
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isUsableSubIdValue(I)Z
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1237
    if-ltz p0, :cond_9

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .prologue
    .line 1247
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValidSlotId(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 1242
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValidSubscriptionId(I)Z
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1228
    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isVoicePromptEnabled()Z
    .registers 2

    .prologue
    .line 1529
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1530
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 1531
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isVoicePromptEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 1536
    :goto_10
    return v1

    .line 1533
    :catch_11
    move-exception v1

    .line 1536
    :cond_12
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 977
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1252
    invoke-static {p1}, getSubId(I)[I

    move-result-object v0

    .line 1253
    .local v0, "subIds":[I
    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    .line 1254
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1258
    :goto_f
    return-void

    .line 1256
    :cond_10
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, logd(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1263
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    return-void
.end method

.method public static setDefaultDataSubIdForMMS(I)V
    .registers 3
    .param p0, "subId"    # I

    .prologue
    .line 1157
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1158
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1159
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubIdForMMS(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1164
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1161
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setSMSPromptEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .prologue
    .line 1067
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1068
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1069
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setSMSPromptEnabled(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1074
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1071
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setSubState(II)I
    .registers 5
    .param p0, "subId"    # I
    .param p1, "subState"    # I

    .prologue
    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 1499
    :try_start_21
    invoke-static {}, getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->setSubState(II)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_2a

    move-result v1

    .line 1501
    :goto_29
    return v1

    .line 1500
    :catch_2a
    move-exception v0

    .line 1501
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static setSubState(JI)I
    .registers 5
    .param p0, "subId"    # J
    .param p2, "subState"    # I

    .prologue
    .line 1514
    long-to-int v0, p0

    .line 1515
    .local v0, "sub":I
    invoke-static {v0, p2}, setSubState(II)I

    move-result v1

    return v1
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 1353
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1354
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1355
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1360
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1357
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setVoicePromptEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .prologue
    .line 1542
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1543
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1544
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setVoicePromptEnabled(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1549
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1546
    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 490
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_1d

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_a
    :try_start_a
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 500
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_1c

    .line 501
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_20

    .line 506
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1c
    :goto_1c
    return-void

    .line 490
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1d
    const-string v0, "<unknown>"

    goto :goto_a

    .line 503
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_20
    move-exception v2

    goto :goto_1c
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 747
    if-nez p1, :cond_7

    .line 748
    const-string v1, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 750
    :cond_7
    invoke-static {p2}, isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 751
    const-string v1, "[addSubscriptionInfoRecord]- invalid slotId"

    invoke-static {v1}, logd(Ljava/lang/String;)V

    .line 755
    :cond_12
    :try_start_12
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 756
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_21

    .line 758
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_23

    .line 765
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_21
    :goto_21
    const/4 v1, 0x0

    return-object v1

    .line 760
    :catch_23
    move-exception v1

    goto :goto_21
.end method

.method public allDefaultsSelected()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1194
    invoke-static {}, getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1203
    :cond_b
    :goto_b
    return v0

    .line 1197
    :cond_c
    invoke-static {}, getDefaultSmsSubId()I

    move-result v1

    invoke-static {v1}, isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1200
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1203
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public clearDefaultsForInactiveSubIds()V
    .registers 3

    .prologue
    .line 1214
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1215
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1216
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1221
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1218
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public clearSubscriptionInfo()V
    .registers 3

    .prologue
    .line 1180
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1181
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1182
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1188
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1184
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public getActiveSubscriptionIdList()[I
    .registers 4

    .prologue
    .line 1276
    const/4 v1, 0x0

    .line 1279
    .local v1, "subId":[I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1280
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1281
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17

    move-result-object v1

    .line 1287
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    if-nez v1, :cond_16

    .line 1288
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 1291
    :cond_16
    return-object v1

    .line 1283
    :catch_17
    move-exception v2

    goto :goto_11
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    .line 541
    invoke-static {p1}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 545
    const/4 v1, 0x0

    .line 559
    :cond_7
    :goto_7
    return-object v1

    .line 548
    :cond_8
    const/4 v1, 0x0

    .line 551
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_9
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 552
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_7

    .line 553
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v1

    goto :goto_7

    .line 555
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_20
    move-exception v2

    goto :goto_7
.end method

.method public getActiveSubscriptionInfoCount()I
    .registers 4

    .prologue
    .line 704
    const/4 v1, 0x0

    .line 707
    .local v1, "result":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 708
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 709
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v1

    .line 715
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    :goto_17
    return v1

    .line 711
    :catch_18
    move-exception v2

    goto :goto_17
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .registers 4

    .prologue
    .line 724
    const/4 v1, 0x0

    .line 727
    .local v1, "result":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 728
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 729
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 735
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 731
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 571
    if-nez p1, :cond_9

    .line 572
    const-string v2, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 573
    const/4 v1, 0x0

    .line 587
    :cond_8
    :goto_8
    return-object v1

    .line 576
    :cond_9
    const/4 v1, 0x0

    .line 579
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_a
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 580
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_8

    .line 581
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_21

    move-result-object v1

    goto :goto_8

    .line 583
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_8
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .registers 5
    .param p1, "slotIdx"    # I

    .prologue
    .line 597
    invoke-static {p1}, isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 598
    const-string v2, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x0

    .line 614
    :cond_c
    :goto_c
    return-object v1

    .line 602
    :cond_d
    const/4 v1, 0x0

    .line 605
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_e
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 606
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_c

    .line 607
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_23} :catch_25

    move-result-object v1

    goto :goto_c

    .line 610
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_25
    move-exception v2

    goto :goto_c
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 666
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 667
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 668
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v1

    .line 673
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    :goto_17
    return-object v1

    .line 670
    :catch_18
    move-exception v2

    goto :goto_17
.end method

.method public getAllSubscriptionInfoCount()I
    .registers 4

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 687
    .local v1, "result":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 688
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 689
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v1

    .line 695
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    :goto_17
    return v1

    .line 691
    :catch_18
    move-exception v2

    goto :goto_17
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    const/4 v1, 0x0

    .line 628
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 629
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 630
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_1f

    move-result-object v1

    .line 636
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    :goto_17
    if-nez v1, :cond_1e

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1e
    return-object v1

    .line 632
    :catch_1f
    move-exception v2

    goto :goto_17
.end method

.method public getDefaultDataPhoneId()I
    .registers 2

    .prologue
    .line 1174
    invoke-static {}, getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .prologue
    .line 1169
    invoke-static {}, getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .registers 2

    .prologue
    .line 1119
    invoke-static {}, getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .prologue
    .line 1114
    invoke-static {}, getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .prologue
    .line 1042
    invoke-static {}, getDefaultVoiceSubId()I

    move-result v0

    invoke-virtual {p0, v0}, getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public isActiveSubId(I)Z
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1457
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1458
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 1459
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 1463
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_10
    return v1

    .line 1461
    :catch_11
    move-exception v1

    .line 1463
    :cond_12
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isNetworkRoaming(I)Z
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1305
    invoke-static {p1}, getPhoneId(I)I

    move-result v0

    .line 1306
    .local v0, "phoneId":I
    if-gez v0, :cond_8

    .line 1308
    const/4 v1, 0x0

    .line 1310
    :goto_7
    return v1

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    goto :goto_7
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 516
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_1d

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_a
    :try_start_a
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 526
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_1c

    .line 527
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_20

    .line 532
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1c
    :goto_1c
    return-void

    .line 516
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1d
    const-string v0, "<unknown>"

    goto :goto_a

    .line 529
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_20
    move-exception v2

    goto :goto_1c
.end method

.method public setDataRoaming(II)I
    .registers 6
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 880
    if-ltz p1, :cond_8

    invoke-static {p2}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 881
    :cond_8
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 882
    const/4 v1, -0x1

    .line 896
    :cond_e
    :goto_e
    return v1

    .line 885
    :cond_f
    const/4 v1, 0x0

    .line 888
    .local v1, "result":I
    :try_start_10
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 889
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_e

    .line 890
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_e

    .line 892
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_e
.end method

.method public setDefaultDataSubId(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1143
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1144
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1145
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1150
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1147
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public setDefaultSmsSubId(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1103
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1104
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1105
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1110
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1107
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public setDefaultVoiceSubId(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1031
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1032
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1033
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1038
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1035
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .registers 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 806
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .registers 8
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 823
    invoke-static {p2}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 824
    const-string v2, "[setDisplayName]- fail"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 825
    const/4 v1, -0x1

    .line 839
    :cond_c
    :goto_c
    return v1

    .line 828
    :cond_d
    const/4 v1, 0x0

    .line 831
    .local v1, "result":I
    :try_start_e
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 832
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_c

    .line 833
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_c

    .line 835
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_1f
    move-exception v2

    goto :goto_c
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 851
    if-eqz p1, :cond_8

    invoke-static {p2}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 852
    :cond_8
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 853
    const/4 v1, -0x1

    .line 867
    :cond_e
    :goto_e
    return v1

    .line 856
    :cond_f
    const/4 v1, 0x0

    .line 859
    .local v1, "result":I
    :try_start_10
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 860
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_e

    .line 861
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_e

    .line 863
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_e
.end method

.method public setIconTint(II)I
    .registers 6
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 778
    invoke-static {p2}, isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 779
    const-string v2, "[setIconTint]- fail"

    invoke-static {v2}, logd(Ljava/lang/String;)V

    .line 780
    const/4 v1, -0x1

    .line 794
    :cond_c
    :goto_c
    return v1

    .line 783
    :cond_d
    const/4 v1, 0x0

    .line 786
    .local v1, "result":I
    :try_start_e
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 787
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_c

    .line 788
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_c

    .line 790
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_1f
    move-exception v2

    goto :goto_c
.end method
