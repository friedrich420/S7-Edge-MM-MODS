.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field public static final mStatusBarIconOpBranding:Ljava/lang/String;

.field public static final mUseDefaultDndModeForUSA:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

.field private final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mEffectsSuppressed:Z

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mUser:I

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 99
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mStatusBarIconOpBranding:Ljava/lang/String;

    .line 100
    const-string v0, "ATT"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "AIO"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "TMB"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "MTR"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "SPR"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "VMU"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "VZW"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "USC"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "LRA"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "ACG"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "CSP"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "BST"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "XAS"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "TFN"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "XAR"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "SPT"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "CRI"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "BNN"

    sget-object v1, mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    :cond_cb
    const/4 v0, 0x1

    :goto_cc
    sput-boolean v0, mUseDefaultDndModeForUSA:Z

    return-void

    :cond_cf
    const/4 v0, 0x0

    goto :goto_cc
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mConfigs:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 93
    iput v2, p0, mUser:I

    .line 732
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    .line 109
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 111
    iget-object v0, p0, mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v0}, addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 112
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 120
    iget-object v0, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, appendDefaultTwScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    .line 122
    iget-object v0, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    .line 123
    iget-object v0, p0, mConfigs:Landroid/util/SparseArray;

    iget-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 125
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 126
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 127
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 128
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    invoke-direct {p0}, getZenModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ZenModeHelper;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, setZenModeSetting(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    iget-object v0, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    invoke-direct {p0}, dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    iget-object v0, p0, mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 76
    invoke-direct {p0, p1}, appendDefaultTwScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 76
    iget v0, p0, mZenMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 76
    invoke-direct {p0, p1}, setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method private appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 689
    if-nez p1, :cond_3

    .line 700
    :goto_2
    return-void

    .line 691
    :cond_3
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 692
    .local v0, "events":Landroid/service/notification/ZenModeConfig$EventInfo;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 693
    const/4 v2, 0x1

    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 694
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 695
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 696
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040594

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 697
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 698
    const/4 v2, 0x3

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 699
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    .registers 10
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 660
    if-nez p1, :cond_5

    .line 686
    :goto_4
    return-void

    .line 662
    :cond_5
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 663
    .local v3, "weeknights":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 664
    const/16 v4, 0x16

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 665
    const/4 v4, 0x7

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 666
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 667
    .local v0, "rule1":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 668
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040592

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 670
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 671
    iput v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 672
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 675
    .local v2, "weekends":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 676
    const/16 v4, 0x17

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 677
    const/16 v4, 0x1e

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 678
    const/16 v4, 0xa

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 679
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 680
    .local v1, "rule2":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 681
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040593

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 683
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 684
    iput v7, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 685
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private appendDefaultTwScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 704
    if-nez p1, :cond_3

    .line 720
    :goto_2
    return-void

    .line 706
    :cond_3
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 707
    .local v0, "allDays":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 708
    const/16 v2, 0x16

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 709
    const/4 v2, 0x7

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 710
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 711
    .local v1, "rule1":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 712
    const-string/jumbo v2, "twschedule"

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 713
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 714
    sget-boolean v2, mUseDefaultDndModeForUSA:Z

    if-eqz v2, :cond_37

    .line 715
    const/4 v2, 0x2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 719
    :goto_2d
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 717
    :cond_37
    const/4 v2, 0x3

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_2d
.end method

.method private applyRestrictions()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 546
    iget v6, p0, mZenMode:I

    if-eqz v6, :cond_4f

    move v3, v4

    .line 553
    .local v3, "zen":Z
    :goto_9
    iget-boolean v6, p0, mEffectsSuppressed:Z

    if-nez v6, :cond_15

    iget v6, p0, mZenMode:I

    if-eq v6, v7, :cond_15

    iget v6, p0, mZenMode:I

    if-ne v6, v8, :cond_51

    :cond_15
    move v2, v4

    .line 557
    .local v2, "muteNotifications":Z
    :goto_16
    const/4 v6, 0x5

    invoke-direct {p0, v2, v6}, applyRestrictions(ZI)V

    .line 565
    iget v6, p0, mZenMode:I

    if-eq v6, v7, :cond_36

    iget v6, p0, mZenMode:I

    if-eq v6, v8, :cond_36

    iget v6, p0, mZenMode:I

    if-ne v6, v4, :cond_32

    iget-object v6, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v6, :cond_32

    iget-object v6, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v6, :cond_36

    :cond_32
    iget-boolean v6, p0, mEffectsSuppressed:Z

    if-eqz v6, :cond_53

    :cond_36
    move v1, v4

    .line 571
    .local v1, "muteCalls":Z
    :goto_37
    const/4 v6, 0x6

    invoke-direct {p0, v1, v6}, applyRestrictions(ZI)V

    .line 578
    iget v6, p0, mZenMode:I

    if-eq v6, v7, :cond_49

    iget v6, p0, mZenMode:I

    if-ne v6, v4, :cond_55

    iget-object v6, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v6, :cond_55

    :cond_49
    move v0, v4

    .line 581
    .local v0, "muteAlarms":Z
    :goto_4a
    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, applyRestrictions(ZI)V

    .line 582
    return-void

    .end local v0    # "muteAlarms":Z
    .end local v1    # "muteCalls":Z
    .end local v2    # "muteNotifications":Z
    .end local v3    # "zen":Z
    :cond_4f
    move v3, v5

    .line 546
    goto :goto_9

    .restart local v3    # "zen":Z
    :cond_51
    move v2, v5

    .line 553
    goto :goto_16

    .restart local v2    # "muteNotifications":Z
    :cond_53
    move v1, v5

    .line 565
    goto :goto_37

    .restart local v1    # "muteCalls":Z
    :cond_55
    move v0, v5

    .line 578
    goto :goto_4a
.end method

.method private applyRestrictions(ZI)V
    .registers 9
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 585
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "com.sec.dsm.system"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.fmm"

    aput-object v1, v0, v2

    .line 591
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_20

    move v1, v2

    :goto_13
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_22

    :goto_1c
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 597
    return-void

    :cond_20
    move v1, v3

    .line 591
    goto :goto_13

    :cond_22
    move v2, v3

    .line 594
    goto :goto_1c
.end method

.method private applyZenToRingerMode()V
    .registers 5

    .prologue
    .line 600
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_5

    .line 623
    :cond_4
    :goto_4
    return-void

    .line 602
    :cond_5
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 603
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 604
    .local v0, "newRingerModeInternal":I
    iget v2, p0, mZenMode:I

    packed-switch v2, :pswitch_data_32

    .line 620
    :cond_11
    :goto_11
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 621
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_4

    .line 607
    :pswitch_1c
    if-eqz v1, :cond_11

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 609
    const/4 v0, 0x0

    goto :goto_11

    .line 614
    :pswitch_27
    if-nez v1, :cond_11

    .line 615
    invoke-direct {p0}, getPreviousRingerModeSetting()I

    move-result v0

    .line 616
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    goto :goto_11

    .line 604
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private computeZenMode(Landroid/util/ArraySet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "automaticRulesOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-direct {p0, p1}, computeZenModeTW(Landroid/util/ArraySet;)I

    move-result v0

    return v0
.end method

.method private computeZenModeTW(Landroid/util/ArraySet;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "automaticRulesOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 506
    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_8

    move v1, v2

    .line 541
    :cond_7
    :goto_7
    return v1

    .line 509
    :cond_8
    iget v1, p0, mZenMode:I

    .line 510
    .local v1, "zen":I
    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 512
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v2, :cond_57

    .line 513
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 514
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 515
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 516
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set zen mode ON by schedule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 518
    :cond_3d
    const/4 v1, 0x0

    .line 519
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set zen mode OFF by schedule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 522
    :cond_57
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7c

    .line 523
    const/4 v1, 0x0

    .line 524
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 525
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set zen mode OFF by schedule switch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 526
    :cond_7c
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_aa

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v2, :cond_aa

    .line 527
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 528
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting manual zen mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 534
    :cond_aa
    invoke-direct {p0}, getZenModeSetting()I

    move-result v1

    .line 535
    if-eqz v1, :cond_7

    .line 536
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting zen mode for exception case : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v2, "computeZenModeTW"

    invoke-virtual {p0, v1, v5, v2}, setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private dispatchOnConfigChanged()V
    .registers 4

    .prologue
    .line 626
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 627
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    .line 629
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .registers 4

    .prologue
    .line 632
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 633
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    goto :goto_6

    .line 635
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 4

    .prologue
    .line 638
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 639
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_6

    .line 641
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 278
    if-nez p3, :cond_11

    .line 279
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 294
    :cond_10
    return-void

    .line 282
    :cond_11
    const-string v2, "allow(calls=%s,callsFrom=%s,repeatCallers=%s,messages=%s,messagesFrom=%s,events=%s,reminders=%s,alarms=%s)\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 287
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  manualRule="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 288
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 289
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 290
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e
    if-ge v1, v0, :cond_10

    .line 291
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_96

    const-string v2, "  automaticRules="

    :goto_87
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 291
    :cond_96
    const-string v2, "                 "

    goto :goto_87
.end method

.method private evaluateZenMode(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 436
    const-string v2, "ZenModeHelper"

    const-string/jumbo v4, "evaluateZenMode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 444
    .local v0, "automaticRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    const-string v2, "[manual]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 445
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_22

    move v1, v3

    .line 458
    .local v1, "zen":I
    :goto_1d
    iget v2, p0, mZenMode:I

    if-ne v1, v2, :cond_65

    .line 478
    :goto_21
    return v3

    .line 445
    .end local v1    # "zen":I
    :cond_22
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_1d

    .line 447
    :cond_29
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3e

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_45

    :cond_3e
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_60

    .line 450
    :cond_45
    iget v1, p0, mZenMode:I

    .line 451
    .restart local v1    # "zen":I
    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keep current mode for setting allow or schedule time at this time : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 453
    .end local v1    # "zen":I
    :cond_60
    invoke-direct {p0, v0}, computeZenMode(Landroid/util/ArraySet;)I

    move-result v1

    .restart local v1    # "zen":I
    goto :goto_1d

    .line 459
    :cond_65
    invoke-static {v1, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 460
    iput v1, p0, mZenMode:I

    .line 461
    invoke-direct {p0}, updateRingerModeAffectedStreams()V

    .line 462
    iget v2, p0, mZenMode:I

    invoke-direct {p0, v2}, setZenModeSetting(I)V

    .line 465
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    if-eqz v2, :cond_83

    .line 466
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    invoke-virtual {p0, v2}, sendBroadcastForZenModeChange(I)V

    .line 467
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iput v3, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 476
    :cond_83
    invoke-direct {p0}, applyRestrictions()V

    .line 477
    iget-object v2, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$H;->access$500(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 478
    const/4 v3, 0x1

    goto :goto_21
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 2
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 353
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    goto :goto_3
.end method

.method private getPreviousRingerModeSetting()I
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getZenModeSetting()I
    .registers 4

    .prologue
    .line 417
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 644
    const/4 v2, 0x0

    .line 646
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110005

    :try_start_4
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 647
    :cond_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    .line 648
    iget-object v3, p0, mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_24
    .catchall {:try_start_4 .. :try_end_14} :catchall_30

    move-result-object v0

    .line 649
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_8

    .line 654
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 656
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_1a
    return-object v0

    .line 654
    :cond_1b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 656
    :goto_1e
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_1a

    .line 651
    :catch_24
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_30

    .line 654
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1e

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 376
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_24

    .line 377
    :cond_a
    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config in setConfig; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 413
    :cond_23
    :goto_23
    return v2

    .line 380
    :cond_24
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, mUser:I

    if-eq v4, v5, :cond_51

    .line 382
    iget-object v3, p0, mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_23

    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfig: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 386
    :cond_51
    iget-object v4, p0, mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    .line 387
    iget-object v4, p0, mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v4}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 390
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfig called from ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") but it is same : config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 394
    :cond_89
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_ab

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setConfig reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    :cond_ab
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 396
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    invoke-static {p1}, getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    move v0, v2

    .line 398
    .local v0, "policyChanged":Z
    :goto_c1
    iput-object p1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    .line 399
    invoke-direct {p0}, dispatchOnConfigChanged()V

    .line 400
    if-eqz v0, :cond_cb

    .line 401
    invoke-direct {p0}, dispatchOnPolicyChanged()V

    .line 403
    :cond_cb
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "val":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "zen_mode_config_etag"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    invoke-direct {p0, p2, p3}, evaluateZenMode(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 406
    invoke-direct {p0}, applyRestrictions()V

    .line 408
    :cond_ea
    iget-object v4, p0, mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    .line 411
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iput v3, v4, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    goto/16 :goto_23

    .end local v0    # "policyChanged":Z
    .end local v1    # "val":Ljava/lang/String;
    :cond_f5
    move v0, v3

    .line 396
    goto :goto_c1
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z

    .prologue
    const/4 v7, 0x1

    .line 238
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v4, :cond_6

    .line 259
    :cond_5
    :goto_5
    return-void

    .line 239
    :cond_6
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_4b

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setManualZenMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " conditionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setRingerMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4b
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 244
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_75

    .line 245
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 246
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 247
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 248
    iput-boolean v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    goto :goto_60

    .line 252
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_75
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 253
    .local v3, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 254
    iput p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 255
    iput-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 256
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 258
    .end local v3    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_82
    invoke-direct {p0, v2, p3, p4}, setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    goto :goto_5
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .prologue
    .line 430
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_ringer_level"

    if-nez p1, :cond_10

    const/4 v0, 0x0

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    return-void

    .line 430
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private setZenModeSetting(I)V
    .registers 4
    .param p1, "zen"    # I

    .prologue
    .line 421
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_9

    .line 483
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 485
    :cond_9
    return-void
.end method

.method private static zenSeverity(I)I
    .registers 2
    .param p0, "zen"    # I

    .prologue
    .line 724
    packed-switch p0, :pswitch_data_c

    .line 728
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 725
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 726
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 727
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 724
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 162
    iget-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mZenMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v2, p0, mZenMode:I

    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v2, "mDefaultConfig"

    iget-object v3, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 265
    iget-object v2, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 266
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_51

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v2}, dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 269
    :cond_51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mUser="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, mUser:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 270
    const-string/jumbo v2, "mConfig"

    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 271
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mEffectsSuppressed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, mEffectsSuppressed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 272
    iget-object v2, p0, mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getZenMode()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public initZenMode()V
    .registers 3

    .prologue
    .line 170
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_c
    const-string/jumbo v0, "init"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, evaluateZenMode(Ljava/lang/String;Z)Z

    .line 172
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 154
    iget-object v0, p0, mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 14
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    .line 141
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p0, mZenMode:I

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v0

    return v0
.end method

.method public matchesMessageFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 14
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    .line 148
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p0, mZenMode:I

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesMessageFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v0

    return v0
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 175
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_c
    iget-object v0, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 185
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "user"    # I

    .prologue
    .line 201
    if-gez p1, :cond_3

    .line 204
    :goto_2
    return-void

    .line 202
    :cond_3
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_20
    iget-object v0, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2
.end method

.method public onUserSwitched(I)V
    .registers 6
    .param p1, "user"    # I

    .prologue
    .line 188
    iget v1, p0, mUser:I

    if-eq v1, p1, :cond_6

    if-gez p1, :cond_7

    .line 198
    :cond_6
    :goto_6
    return-void

    .line 189
    :cond_7
    iput p1, p0, mUser:I

    .line 190
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitched u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_26
    iget-object v1, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 192
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_55

    .line 193
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_4d

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitched: generating default config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_4d
    iget-object v1, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 195
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 197
    :cond_55
    const-string/jumbo v1, "onUserSwitched"

    invoke-virtual {p0, v0, v1}, setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 298
    iget-object v6, p0, mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {p1, v6}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 299
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_f

    .line 300
    if-eqz p2, :cond_32

    .line 301
    iget v6, v1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eqz v6, :cond_10

    .line 336
    :cond_f
    :goto_f
    return-void

    .line 304
    :cond_10
    iput-object v7, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 305
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_32

    .line 306
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 308
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 309
    iput-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_20

    .line 315
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_32
    invoke-direct {p0}, getZenModeSetting()I

    move-result v6

    iput v6, p0, mZenMode:I

    .line 316
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_75

    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-eqz v6, :cond_75

    .line 317
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_80

    .line 318
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 319
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v2, :cond_5f

    .line 320
    const-string/jumbo v6, "twschedule"

    iput-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 317
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 322
    :cond_5f
    const-string v6, "ZenModeHelper"

    const-string/jumbo v7, "readXml : Remove redundant rules"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, "key":Ljava/lang/String;
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 328
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_75
    const-string v6, "ZenModeHelper"

    const-string/jumbo v7, "readXml : Append appendDefaultTwScheduleRules"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0, v1}, appendDefaultTwScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    .line 333
    :cond_80
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_8c

    const-string v6, "ZenModeHelper"

    const-string/jumbo v7, "readXml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_8c
    if-eqz p2, :cond_96

    const-string/jumbo v6, "readXml-restore"

    :goto_91
    invoke-virtual {p0, v1, v6}, setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto/16 :goto_f

    :cond_96
    const-string/jumbo v6, "readXml"

    goto :goto_91
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 166
    iget-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 215
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    .line 216
    .local v0, "newZen":I
    if-eq v0, v1, :cond_25

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 220
    :cond_25
    return-void

    :cond_26
    move-object v1, v2

    .line 217
    goto :goto_1a
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .registers 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 207
    iget-object v0, p0, mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    .line 208
    return-void
.end method

.method public sendBroadcastForZenModeChange(I)V
    .registers 6
    .param p1, "changeReason"    # I

    .prologue
    .line 1015
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1016
    .local v0, "dndChangedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1019
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast ACTION_DND_CHANGED sent : reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .registers 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .registers 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;->access$400(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setEffectsSuppressed(Z)V
    .registers 3
    .param p1, "effectsSuppressed"    # Z

    .prologue
    .line 223
    iget-boolean v0, p0, mEffectsSuppressed:Z

    if-ne v0, p1, :cond_5

    .line 226
    :goto_4
    return-void

    .line 224
    :cond_5
    iput-boolean p1, p0, mEffectsSuppressed:Z

    .line 225
    invoke-direct {p0}, applyRestrictions()V

    goto :goto_4
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[manual]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 234
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 4
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 357
    if-eqz p1, :cond_6

    iget-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_7

    .line 361
    :cond_6
    :goto_6
    return-void

    .line 358
    :cond_7
    iget-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 359
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 360
    const-string/jumbo v1, "setNotificationPolicy"

    invoke-virtual {p0, v0, v1}, setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 158
    iget-object v0, p0, mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v1, p0, mZenMode:I

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v2, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 340
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 341
    if-eqz p2, :cond_16

    iget-object v2, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_16

    .line 340
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 344
    :cond_16
    iget-object v2, p0, mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_13

    .line 346
    :cond_22
    return-void
.end method
