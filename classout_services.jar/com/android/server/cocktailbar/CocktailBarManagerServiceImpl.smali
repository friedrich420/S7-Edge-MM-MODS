.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_ACTION_START_CLOCK:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEBUG:Z

.field private static final MIN_UPDATE_PERIOD:I

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "cocktails.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WAKELOCK_TIMEOUT:J

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

.field private final mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

.field private mInitialzed:Z

.field private mLocale:Ljava/util/Locale;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mNextCocktailId:I

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesCocktails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field private mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

.field private mStateLoaded:Z

.field private mTickerDisableflags:I

.field private final mUserId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 109
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 111
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v0, v1

    :goto_11
    sput-boolean v0, DEBUG:Z

    .line 119
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1c

    const v1, 0x1b7740

    :cond_1c
    sput v1, MIN_UPDATE_PERIOD:I

    return-void

    :cond_1f
    move v0, v2

    .line 111
    goto :goto_11
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "policyManager"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 138
    iput v2, p0, mNextCocktailId:I

    .line 139
    iput v2, p0, mTickerDisableflags:I

    .line 140
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, WAKELOCK_TIMEOUT:J

    .line 142
    iput-boolean v2, p0, mInitialzed:Z

    .line 892
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    iput-object v0, p0, mSaveStateRunnable:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 146
    iput p5, p0, mUserId:I

    .line 147
    iget v0, p0, mNextCocktailId:I

    iget v1, p0, mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, mNextCocktailId:I

    .line 148
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, mPm:Landroid/content/pm/IPackageManager;

    .line 149
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    iput-object v0, p0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 150
    iput-object p3, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 151
    iput-object p4, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 152
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 153
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, mLocale:Ljava/util/Locale;

    .line 155
    invoke-static {}, isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 156
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 165
    :goto_6c
    invoke-direct {p0}, systemReady()V

    .line 166
    return-void

    .line 158
    :cond_70
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c
.end method

.method static synthetic access$002(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .prologue
    .line 107
    iput-object p1, p0, mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .prologue
    .line 107
    iput-object p1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    invoke-direct {p0}, ensureStateLoadedLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    invoke-direct {p0}, saveStateLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 107
    iput-object p1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget-wide v0, p0, WAKELOCK_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 107
    iget v0, p0, mUserId:I

    return v0
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 11
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "categoryIds"    # I
    .param p3, "version"    # I

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    move-object v0, v3

    .line 598
    :cond_d
    :goto_d
    return-object v0

    .line 557
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 560
    :cond_32
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 561
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 562
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_4d

    .line 563
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move-object v0, v3

    .line 565
    goto :goto_d

    .line 568
    :cond_4f
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_5a

    .line 569
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : even if the package is disable in emergency mode, allow creating cocktail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_5a
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .local v2, "provider":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v1

    .line 582
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_a8

    .line 583
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProviderLocked : already existed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 584
    goto/16 :goto_d

    .line 573
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "provider":Landroid/content/ComponentName;
    :cond_92
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 574
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_a5

    .line 575
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move-object v0, v3

    .line 577
    goto/16 :goto_d

    .line 586
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "provider":Landroid/content/ComponentName;
    :cond_a8
    invoke-direct {p0, v2, p1, p2, p3}, parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 587
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_d8

    .line 588
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->setVersion(I)V

    .line 589
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c2

    .line 590
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 592
    :cond_c2
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_d

    .line 594
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addProviderLocked : success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_d8
    move-object v0, v3

    .line 598
    goto/16 :goto_d
.end method

.method private addProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 666
    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_1e

    .line 667
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addProvidersForPackageLocked : pkgName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1e
    const/4 v9, 0x0

    .line 670
    .local v9, "providersAdded":Z
    const/4 v11, 0x0

    .line 671
    .local v11, "toolsAdded":Z
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "intentName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    iget v12, p0, mUserId:I

    invoke-direct {p0, v7, v12}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 675
    .local v3, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_58

    const/4 v1, 0x0

    .line 676
    .local v1, "N":I
    :goto_37
    iget-object v12, p0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v12}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v5

    .line 677
    .local v5, "categoryIds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    if-ge v6, v1, :cond_7f

    .line 678
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 679
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 680
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_5d

    .line 677
    :cond_55
    :goto_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 675
    .end local v1    # "N":I
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "categoryIds":I
    .end local v6    # "i":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_37

    .line 683
    .restart local v1    # "N":I
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "categoryIds":I
    .restart local v6    # "i":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5d
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 684
    move/from16 v0, p2

    invoke-direct {p0, v10, v5, v0}, addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v4

    .line 685
    .local v4, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v4, :cond_55

    .line 686
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v12

    iget v12, v12, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_79

    .line 687
    const/4 v11, 0x1

    .line 689
    :cond_79
    const/4 v12, 0x0

    invoke-direct {p0, v4, v8, v12}, sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 690
    const/4 v9, 0x1

    goto :goto_55

    .line 694
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7f
    if-eqz v9, :cond_86

    .line 695
    if-eqz v11, :cond_86

    .line 696
    invoke-direct {p0}, updateToolLauncher()V

    .line 699
    :cond_86
    return v9
.end method

.method private cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1221
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1222
    .local v0, "broadcast":Landroid/app/PendingIntent;
    if-eqz v0, :cond_19

    .line 1223
    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1226
    .local v2, "token":J
    :try_start_f
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 1228
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1232
    .end local v2    # "token":J
    :cond_19
    return-void

    .line 1228
    .restart local v2    # "token":J
    :catchall_1a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method private checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "category"    # I

    .prologue
    const/4 v0, 0x1

    .line 235
    if-nez p2, :cond_7

    :cond_3
    :goto_3
    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setEnable(Z)V

    .line 236
    return-void

    .line 235
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1833
    iget-object v3, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1834
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1835
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 1836
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1837
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1841
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1842
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1843
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1847
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_3d
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1784
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V

    .line 1804
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1808
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1810
    .local v2, "token":J
    :try_start_11
    iget-object v4, p0, mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 1813
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1815
    return-void

    .line 1813
    :catchall_20
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2145
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 2146
    .local v0, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2148
    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2149
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2151
    const-string v1, " (label="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2152
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2153
    const-string v1, ") (description="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2155
    const-string v1, ") (icon="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2157
    const-string v1, ") (previewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2159
    const-string v1, ") (updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2160
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2161
    const-string v1, ") (category="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2162
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2163
    const-string v1, ") (permitVisibilityChanged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2164
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2165
    const-string v1, ") (configure="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2167
    const-string v1, ") (privateMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    const-string v1, ") (cscPreviewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2171
    const-string v1, " (uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2173
    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .registers 6

    .prologue
    .line 505
    iget-boolean v1, p0, mStateLoaded:Z

    if-nez v1, :cond_2e

    .line 506
    invoke-direct {p0}, resetLoadedDataLocked()V

    .line 507
    iget-object v1, p0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_1b

    .line 508
    invoke-direct {p0, v0}, loadCocktailListLocked(I)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 510
    :cond_1b
    invoke-direct {p0}, loadStateLocked()V

    .line 511
    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    iget v4, p0, mUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;-><init>(Landroid/content/Context;Landroid/util/SparseArray;I)V

    iput-object v1, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p0, mStateLoaded:Z

    .line 514
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 453
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_25

    .line 454
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 455
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    .line 456
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 459
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_25
    return-object v2
.end method

.method private findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "privateMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 465
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_2c

    .line 466
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 467
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    .line 468
    .local v4, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v5, :cond_29

    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 469
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 472
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_2c
    return-object v2
.end method

.method private getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I
    .registers 5
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1517
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1518
    .local v0, "cocktailIds":[I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    aput v2, v0, v1

    .line 1519
    return-object v0
.end method

.method private getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 1634
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1635
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_b

    .line 1638
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_a
    return-object v0

    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 1048
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktails.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1582
    const/4 v0, 0x0

    .line 1584
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v1, p0, mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_1b

    move-result-object v0

    .line 1588
    :goto_a
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_16

    .line 1589
    :cond_10
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1591
    :cond_16
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1585
    :catch_1b
    move-exception v1

    goto :goto_a
.end method

.method private incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1821
    iget-object v1, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1826
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1827
    return-void

    .line 1823
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1824
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private static isLocalBinder()Z
    .registers 2

    .prologue
    .line 2023
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadCocktailListLocked(I)V
    .registers 9
    .param p1, "version"    # I

    .prologue
    .line 543
    new-instance v4, Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "intent":Landroid/content/Intent;
    iget v6, p0, mUserId:I

    invoke-direct {p0, v4, v6}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 545
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_2b

    const/4 v0, 0x0

    .line 546
    .local v0, "N":I
    :goto_12
    iget-object v6, p0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v2

    .line 547
    .local v2, "categoryIds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_30

    .line 548
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 549
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v2, p1}, addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 545
    .end local v0    # "N":I
    .end local v2    # "categoryIds":I
    .end local v3    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_12

    .line 551
    .restart local v0    # "N":I
    .restart local v2    # "categoryIds":I
    .restart local v3    # "i":I
    :cond_30
    return-void
.end method

.method private loadStateLocked()V
    .registers 8

    .prologue
    .line 869
    invoke-direct {p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 870
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 872
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 873
    invoke-direct {p0, v2}, readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_2d
    .catchall {:try_start_5 .. :try_end_c} :catchall_67

    .line 877
    if-eqz v2, :cond_12

    .line 879
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_13

    .line 880
    const/4 v2, 0x0

    .line 886
    :cond_12
    :goto_12
    return-void

    .line 881
    :catch_13
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 874
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v0

    .line 875
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2e
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_67

    .line 877
    if-eqz v2, :cond_12

    .line 879
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4d

    .line 880
    const/4 v2, 0x0

    goto :goto_12

    .line 881
    :catch_4d
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 877
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_67
    move-exception v3

    if-eqz v2, :cond_6e

    .line 879
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    .line 880
    const/4 v2, 0x0

    .line 883
    :cond_6e
    :goto_6e
    throw v3

    .line 881
    :catch_6f
    move-exception v0

    .line 882
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method private lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 862
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_1f

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 865
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1e
    return-object v0

    .restart local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 850
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 851
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1f

    .line 852
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 853
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 857
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1b
    return-object v1

    .line 851
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 857
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 14
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "viewId"    # I

    .prologue
    .line 1372
    iget-object v8, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v8, :cond_13

    if-eqz p1, :cond_13

    .line 1374
    :try_start_6
    iget-object v8, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v8, v8, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    iget v10, p0, mUserId:I

    invoke-interface {v8, v9, p2, v10}, Lcom/samsung/android/cocktailbar/ICocktailHost;->viewDataChanged(III)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_6f

    .line 1378
    :cond_13
    :goto_13
    iget-object v8, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-nez v8, :cond_6e

    .line 1379
    iget-object v8, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1380
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$FilterComparison;

    .line 1381
    .local v3, "key":Landroid/content/Intent$FilterComparison;
    if-eqz p1, :cond_21

    iget-object v8, p0, mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1382
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1384
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 1404
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1406
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1408
    .local v6, "token":J
    :try_start_5a
    iget-object v8, p0, mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v0, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_69

    .line 1411
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_21

    :catchall_69
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1416
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Landroid/content/Intent$FilterComparison;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :cond_6e
    return-void

    .line 1375
    :catch_6f
    move-exception v8

    goto :goto_13
.end method

.method private parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z
    .registers 18
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "categoryIds"    # I
    .param p5, "version"    # I

    .prologue
    .line 619
    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 620
    .local v6, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 621
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x0

    .line 623
    .local v10, "res":Z
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.cocktail.provider"

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 624
    if-nez v3, :cond_37

    .line 625
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_9e
    .catchall {:try_start_4 .. :try_end_30} :catchall_c5

    .line 626
    const/4 v0, 0x0

    .line 658
    if-eqz v3, :cond_36

    .line 659
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 662
    :cond_36
    :goto_36
    return v0

    .line 629
    :cond_37
    :try_start_37
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_41

    const/4 v0, 0x2

    if-ne v11, v0, :cond_37

    .line 633
    :cond_41
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 634
    .local v9, "nodeName":Ljava/lang/String;
    const-string v0, "cocktail-provider"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 635
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with cocktail-provider tag for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6b} :catch_9e
    .catchall {:try_start_37 .. :try_end_6b} :catchall_c5

    .line 637
    const/4 v0, 0x0

    .line 658
    if-eqz v3, :cond_36

    .line 659
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_36

    .line 639
    :cond_72
    :try_start_72
    iget-object v0, p0, mContext:Landroid/content/Context;

    move-object v1, p3

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v8

    .line 640
    .local v8, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v8, :cond_9c

    .line 641
    iget v0, p0, mUserId:I

    invoke-static {v8, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 642
    invoke-virtual {p1, v8}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 643
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_92} :catch_9e
    .catchall {:try_start_72 .. :try_end_92} :catchall_c5

    .line 644
    const/4 v10, 0x1

    .line 658
    :goto_93
    if-eqz v3, :cond_98

    .line 659
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_98
    move v0, v10

    .line 662
    goto :goto_36

    .line 646
    :cond_9a
    const/4 v10, 0x0

    goto :goto_93

    .line 649
    :cond_9c
    const/4 v10, 0x0

    goto :goto_93

    .line 651
    .end local v8    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_9e
    move-exception v7

    .line 655
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9f
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML parsing failed for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_9f .. :try_end_bd} :catchall_c5

    .line 656
    const/4 v0, 0x0

    .line 658
    if-eqz v3, :cond_36

    .line 659
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_36

    .line 658
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_c5
    move-exception v0

    if-eqz v3, :cond_cb

    .line 659
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_cb
    throw v0
.end method

.method private parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "categoryIds"    # I
    .param p4, "version"    # I

    .prologue
    .line 603
    new-instance v1, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v0, p0, mNextCocktailId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNextCocktailId:I

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 604
    invoke-direct/range {v0 .. v5}, parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 605
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailAffinity:I

    if-lez v0, :cond_21

    .line 606
    invoke-direct {p0, v1}, checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    .line 608
    :cond_21
    iget-object v0, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_2c

    .line 609
    iget-object v0, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v0}, checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 614
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2c
    :goto_2c
    return-object v1

    .line 613
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2d
    iget v0, p0, mNextCocktailId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mNextCocktailId:I

    .line 614
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 826
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 828
    :cond_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 829
    iget-object v3, p0, mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x280

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_35} :catch_50
    .catchall {:try_start_4 .. :try_end_35} :catchall_59

    move-result-object v3

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_39
    return-object v3

    .line 835
    :cond_3a
    :try_start_3a
    iget-object v3, p0, mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4b} :catch_50
    .catchall {:try_start_3a .. :try_end_4b} :catchall_59

    move-result-object v3

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    .line 838
    :catch_50
    move-exception v2

    .line 839
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_59

    move-result-object v3

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_59
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 29
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 948
    const/16 v19, 0x0

    .line 949
    .local v19, "success":Z
    const/16 v22, 0x0

    .line 951
    .local v22, "version":I
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 952
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 954
    const/16 v17, 0x0

    .line 955
    .local v17, "providerIndex":I
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 957
    .local v11, "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    :cond_18
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 958
    .local v21, "type":I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_46

    .line 959
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 960
    .local v20, "tag":Ljava/lang/String;
    const-string/jumbo v23, "gs"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_ae

    .line 961
    const/16 v23, 0x0

    const-string/jumbo v24, "version"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_41} :catch_189
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_41} :catch_2ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_41} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_41} :catch_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_41} :catch_556
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_62e
    .catchall {:try_start_4 .. :try_end_41} :catchall_706

    move-result-object v3

    .line 963
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_42
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_45} :catch_aa
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_45} :catch_189
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_45} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_45} :catch_556
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_62e
    .catchall {:try_start_42 .. :try_end_45} :catchall_706

    move-result v22

    .line 999
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    :cond_46
    :goto_46
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 1000
    const/16 v19, 0x1

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_53
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .local v9, "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_67} :catch_7f3
    .catchall {:try_start_53 .. :try_end_67} :catchall_23c

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .local v18, "str":Ljava/lang/String;
    :try_start_69
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .local v12, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_6e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1f4

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_79} :catch_7a
    .catchall {:try_start_69 .. :try_end_79} :catchall_7ef

    goto :goto_6e

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_7a
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7c .. :try_end_97} :catchall_23c

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_99
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_21e

    .line 1032
    const/4 v4, 0x0

    .line 1041
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    :cond_9d
    :goto_9d
    if-nez v19, :cond_a9

    .line 1042
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "Failed to read state, clearing cocktail."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-direct/range {p0 .. p0}, resetLoadedDataLocked()V

    .line 1045
    :cond_a9
    return-void

    .line 964
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_aa
    move-exception v8

    .line 965
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v22, 0x0

    goto :goto_46

    .line 967
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_ae
    :try_start_ae
    const-string/jumbo v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_46

    .line 968
    const/16 v23, 0x0

    const-string/jumbo v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 969
    .local v15, "pkg":Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 970
    .local v7, "cl":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_d7
    .catch Ljava/lang/NullPointerException; {:try_start_ae .. :try_end_d7} :catch_189
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_d7} :catch_2ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_d7} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_d7} :catch_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ae .. :try_end_d7} :catch_556
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d7} :catch_62e
    .catchall {:try_start_ae .. :try_end_d7} :catchall_706

    move-result-object v13

    .line 972
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_d8
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_f0} :catch_116
    .catch Ljava/lang/NullPointerException; {:try_start_d8 .. :try_end_f0} :catch_189
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_f0} :catch_2ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_f0} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_f0} :catch_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d8 .. :try_end_f0} :catch_556
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f0} :catch_62e
    .catchall {:try_start_d8 .. :try_end_f0} :catchall_706

    .line 980
    :goto_f0
    :try_start_f0
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    .line 982
    .local v6, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v23

    const-string v24, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_136

    .line 993
    :cond_10b
    :goto_10b
    if-eqz v6, :cond_112

    .line 994
    move/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 996
    :cond_112
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_46

    .line 973
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :catch_116
    move-exception v8

    .line 974
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 978
    .local v16, "pkgs":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v15, v16, v23

    goto :goto_f0

    .line 984
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "pkgs":[Ljava/lang/String;
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_136
    if-nez v6, :cond_10b

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_10b

    .line 985
    new-instance v6, Lcom/samsung/android/cocktailbar/Cocktail;

    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object/from16 v0, p0

    iget v0, v0, mNextCocktailId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mNextCocktailId:I

    move/from16 v0, v23

    invoke-direct {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 986
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-direct {v10}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>()V

    .line 987
    .local v10, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V

    .line 989
    invoke-virtual {v6, v10}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, mCocktailArr:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_188
    .catch Ljava/lang/NullPointerException; {:try_start_f0 .. :try_end_188} :catch_189
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_188} :catch_2ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_188} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_188} :catch_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f0 .. :try_end_188} :catch_556
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_188} :catch_62e
    .catchall {:try_start_f0 .. :try_end_188} :catchall_706

    goto :goto_10b

    .line 1001
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v7    # "cl":Ljava/lang/String;
    .end local v10    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "providerIndex":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_189
    move-exception v8

    .line 1002
    .local v8, "e":Ljava/lang/NullPointerException;
    :try_start_18a
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a5
    .catchall {:try_start_18a .. :try_end_1a5} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_1a8
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1bc} :catch_7ec
    .catchall {:try_start_1a8 .. :try_end_1bc} :catchall_2a9

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_1be
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1c3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_261

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1ce} :catch_1cf
    .catchall {:try_start_1be .. :try_end_1ce} :catchall_7e8

    goto :goto_1c3

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_1cf
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_1d1
    :try_start_1d1
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1d1 .. :try_end_1ec} :catchall_2a9

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_1ee
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_28b

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_1f4
    :try_start_1f4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1f7} :catch_7a
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_7ef

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_1fa
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1fd} :catch_200

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_200
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_21e
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_23c
    move-exception v23

    .line 1030
    :goto_23d
    if-eqz v4, :cond_243

    .line 1031
    :try_start_23f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_242} :catch_244

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_243
    :goto_243
    throw v23

    .line 1034
    :catch_244
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_243

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_261
    :try_start_261
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_264
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_264} :catch_1cf
    .catchall {:try_start_261 .. :try_end_264} :catchall_7e8

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_267
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_26a} :catch_26d

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_26d
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_28b
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2a9
    move-exception v23

    .line 1030
    :goto_2aa
    if-eqz v4, :cond_2b0

    .line 1031
    :try_start_2ac
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2af} :catch_2b1

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_2b0
    :goto_2b0
    throw v23

    .line 1034
    :catch_2b1
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b0

    .line 1003
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2ce
    move-exception v8

    .line 1004
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_2cf
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ea
    .catchall {:try_start_2cf .. :try_end_2ea} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_2ed
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_301} :catch_7e5
    .catchall {:try_start_2ed .. :try_end_301} :catchall_381

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_303
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_308
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_339

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_313
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_313} :catch_314
    .catchall {:try_start_303 .. :try_end_313} :catchall_7e1

    goto :goto_308

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_314
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_316
    :try_start_316
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_331
    .catchall {:try_start_316 .. :try_end_331} :catchall_381

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_333
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_336
    .catch Ljava/io/IOException; {:try_start_333 .. :try_end_336} :catch_363

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_339
    :try_start_339
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_33c
    .catch Ljava/io/IOException; {:try_start_339 .. :try_end_33c} :catch_314
    .catchall {:try_start_339 .. :try_end_33c} :catchall_7e1

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_33f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_342} :catch_345

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_345
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_363
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_381
    move-exception v23

    .line 1030
    :goto_382
    if-eqz v4, :cond_388

    .line 1031
    :try_start_384
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_387
    .catch Ljava/io/IOException; {:try_start_384 .. :try_end_387} :catch_389

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_388
    :goto_388
    throw v23

    .line 1034
    :catch_389
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_388

    .line 1005
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3a6
    move-exception v8

    .line 1006
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3a7
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c2
    .catchall {:try_start_3a7 .. :try_end_3c2} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_3c5
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3d9
    .catch Ljava/io/IOException; {:try_start_3c5 .. :try_end_3d9} :catch_7de
    .catchall {:try_start_3c5 .. :try_end_3d9} :catchall_459

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_3db
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_3e0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_411

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3eb
    .catch Ljava/io/IOException; {:try_start_3db .. :try_end_3eb} :catch_3ec
    .catchall {:try_start_3db .. :try_end_3eb} :catchall_7da

    goto :goto_3e0

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_3ec
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_3ee
    :try_start_3ee
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_409
    .catchall {:try_start_3ee .. :try_end_409} :catchall_459

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_40b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_40e
    .catch Ljava/io/IOException; {:try_start_40b .. :try_end_40e} :catch_43b

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_411
    :try_start_411
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_414
    .catch Ljava/io/IOException; {:try_start_411 .. :try_end_414} :catch_3ec
    .catchall {:try_start_411 .. :try_end_414} :catchall_7da

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_417
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_41a
    .catch Ljava/io/IOException; {:try_start_417 .. :try_end_41a} :catch_41d

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_41d
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_43b
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_459
    move-exception v23

    .line 1030
    :goto_45a
    if-eqz v4, :cond_460

    .line 1031
    :try_start_45c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_45f
    .catch Ljava/io/IOException; {:try_start_45c .. :try_end_45f} :catch_461

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_460
    :goto_460
    throw v23

    .line 1034
    :catch_461
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_460

    .line 1007
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_47e
    move-exception v8

    .line 1008
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_47f
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49a
    .catchall {:try_start_47f .. :try_end_49a} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_49d
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4b1
    .catch Ljava/io/IOException; {:try_start_49d .. :try_end_4b1} :catch_7d7
    .catchall {:try_start_49d .. :try_end_4b1} :catchall_531

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_4b3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_4b8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4e9

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4c3
    .catch Ljava/io/IOException; {:try_start_4b3 .. :try_end_4c3} :catch_4c4
    .catchall {:try_start_4b3 .. :try_end_4c3} :catchall_7d3

    goto :goto_4b8

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_4c4
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_4c6
    :try_start_4c6
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e1
    .catchall {:try_start_4c6 .. :try_end_4e1} :catchall_531

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_4e3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4e6
    .catch Ljava/io/IOException; {:try_start_4e3 .. :try_end_4e6} :catch_513

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_4e9
    :try_start_4e9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4ec
    .catch Ljava/io/IOException; {:try_start_4e9 .. :try_end_4ec} :catch_4c4
    .catchall {:try_start_4e9 .. :try_end_4ec} :catchall_7d3

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_4ef
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4f2
    .catch Ljava/io/IOException; {:try_start_4ef .. :try_end_4f2} :catch_4f5

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_4f5
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_513
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    :catchall_531
    move-exception v23

    .line 1030
    :goto_532
    if-eqz v4, :cond_538

    .line 1031
    :try_start_534
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_537
    .catch Ljava/io/IOException; {:try_start_534 .. :try_end_537} :catch_539

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_538
    :goto_538
    throw v23

    .line 1034
    :catch_539
    move-exception v8

    .line 1035
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_538

    .line 1009
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_556
    move-exception v8

    .line 1010
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_557
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_572
    .catchall {:try_start_557 .. :try_end_572} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_575
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_589
    .catch Ljava/io/IOException; {:try_start_575 .. :try_end_589} :catch_7d0
    .catchall {:try_start_575 .. :try_end_589} :catchall_609

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_58b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_590
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5c1

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_59b
    .catch Ljava/io/IOException; {:try_start_58b .. :try_end_59b} :catch_59c
    .catchall {:try_start_58b .. :try_end_59b} :catchall_7cc

    goto :goto_590

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_59c
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_59e
    :try_start_59e
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b9
    .catchall {:try_start_59e .. :try_end_5b9} :catchall_609

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_5bb
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5be
    .catch Ljava/io/IOException; {:try_start_5bb .. :try_end_5be} :catch_5eb

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_5c1
    :try_start_5c1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5c4
    .catch Ljava/io/IOException; {:try_start_5c1 .. :try_end_5c4} :catch_59c
    .catchall {:try_start_5c1 .. :try_end_5c4} :catchall_7cc

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_5c7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5ca
    .catch Ljava/io/IOException; {:try_start_5c7 .. :try_end_5ca} :catch_5cd

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_5cd
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_5eb
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_609
    move-exception v23

    .line 1030
    :goto_60a
    if-eqz v4, :cond_610

    .line 1031
    :try_start_60c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_60f
    .catch Ljava/io/IOException; {:try_start_60c .. :try_end_60f} :catch_611

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_610
    :goto_610
    throw v23

    .line 1034
    :catch_611
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_610

    .line 1011
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_62e
    move-exception v8

    .line 1012
    .local v8, "e":Ljava/lang/Exception;
    :try_start_62f
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64a
    .catchall {:try_start_62f .. :try_end_64a} :catchall_706

    .line 1014
    if-nez v19, :cond_9d

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_64d
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_661
    .catch Ljava/io/IOException; {:try_start_64d .. :try_end_661} :catch_7c9
    .catchall {:try_start_64d .. :try_end_661} :catchall_6e1

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_663
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_668
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_699

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_673
    .catch Ljava/io/IOException; {:try_start_663 .. :try_end_673} :catch_674
    .catchall {:try_start_663 .. :try_end_673} :catchall_7c5

    goto :goto_668

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_674
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_676
    :try_start_676
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_691
    .catchall {:try_start_676 .. :try_end_691} :catchall_6e1

    .line 1030
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_693
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_696
    .catch Ljava/io/IOException; {:try_start_693 .. :try_end_696} :catch_6c3

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1024
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_699
    :try_start_699
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_69c
    .catch Ljava/io/IOException; {:try_start_699 .. :try_end_69c} :catch_674
    .catchall {:try_start_699 .. :try_end_69c} :catchall_7c5

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_9d

    .line 1031
    :try_start_69f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6a2
    .catch Ljava/io/IOException; {:try_start_69f .. :try_end_6a2} :catch_6a5

    .line 1032
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1034
    :catch_6a5
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_6c3
    move-exception v8

    .line 1035
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_6e1
    move-exception v23

    .line 1030
    :goto_6e2
    if-eqz v4, :cond_6e8

    .line 1031
    :try_start_6e4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6e7
    .catch Ljava/io/IOException; {:try_start_6e4 .. :try_end_6e7} :catch_6e9

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_6e8
    :goto_6e8
    throw v23

    .line 1034
    :catch_6e9
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e8

    .line 1014
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_706
    move-exception v23

    if-nez v19, :cond_754

    .line 1015
    const/4 v4, 0x0

    .line 1017
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_70a
    invoke-direct/range {p0 .. p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1018
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71e
    .catch Ljava/io/IOException; {:try_start_70a .. :try_end_71e} :catch_7c2
    .catchall {:try_start_70a .. :try_end_71e} :catchall_79a

    .line 1019
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1020
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_720
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1021
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_725
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_755

    .line 1022
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_730
    .catch Ljava/io/IOException; {:try_start_720 .. :try_end_730} :catch_731
    .catchall {:try_start_720 .. :try_end_730} :catchall_7bf

    goto :goto_725

    .line 1026
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_731
    move-exception v8

    move-object v4, v5

    .line 1027
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_733
    :try_start_733
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74e
    .catchall {:try_start_733 .. :try_end_74e} :catchall_79a

    .line 1030
    if-eqz v4, :cond_754

    .line 1031
    :try_start_750
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_753
    .catch Ljava/io/IOException; {:try_start_750 .. :try_end_753} :catch_77d

    .line 1032
    const/4 v4, 0x0

    .line 1038
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_754
    :goto_754
    throw v23

    .line 1024
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_755
    :try_start_755
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_758
    .catch Ljava/io/IOException; {:try_start_755 .. :try_end_758} :catch_731
    .catchall {:try_start_755 .. :try_end_758} :catchall_7bf

    .line 1025
    const/4 v4, 0x0

    .line 1030
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_754

    .line 1031
    :try_start_75b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_75e
    .catch Ljava/io/IOException; {:try_start_75b .. :try_end_75e} :catch_760

    .line 1032
    const/4 v4, 0x0

    goto :goto_754

    .line 1034
    :catch_760
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_754

    .line 1034
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_77d
    move-exception v8

    .line 1035
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_754

    .line 1029
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_79a
    move-exception v23

    .line 1030
    :goto_79b
    if-eqz v4, :cond_7a1

    .line 1031
    :try_start_79d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7a0
    .catch Ljava/io/IOException; {:try_start_79d .. :try_end_7a0} :catch_7a2

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :cond_7a1
    :goto_7a1
    throw v23

    .line 1034
    :catch_7a2
    move-exception v8

    .line 1035
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a1

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7bf
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_79b

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7c2
    move-exception v8

    goto/16 :goto_733

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7c5
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6e2

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7c9
    move-exception v8

    goto/16 :goto_676

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7cc
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_60a

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7d0
    move-exception v8

    goto/16 :goto_59e

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7d3
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_532

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7d7
    move-exception v8

    goto/16 :goto_4c6

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7da
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_45a

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7de
    move-exception v8

    goto/16 :goto_3ee

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7e1
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_382

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7e5
    move-exception v8

    goto/16 :goto_316

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_7e8
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2aa

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7ec
    move-exception v8

    goto/16 :goto_1d1

    .line 1029
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :catchall_7ef
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_23d

    .line 1026
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_7f3
    move-exception v8

    goto/16 :goto_7c
.end method

.method private registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 16
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1189
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_e

    .line 1190
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerForBroadcastsLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v9

    .line 1193
    .local v9, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v9, :cond_6e

    iget v2, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    if-lez v2, :cond_6e

    .line 1194
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v6

    .line 1195
    .local v6, "broadcast":Landroid/app/PendingIntent;
    if-eqz v6, :cond_6f

    move v7, v0

    .line 1196
    .local v7, "alreadyRegistered":Z
    :goto_1f
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v10, "intent":Landroid/content/Intent;
    new-array v8, v0, [I

    .line 1198
    .local v8, "cocktailIds":[I
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    aput v0, v8, v1

    .line 1199
    const-string v0, "cocktailIds"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1200
    iget-object v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1203
    .local v12, "token":J
    :try_start_3e
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v11, p0, mUserId:I

    invoke-direct {v3, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v10, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_71

    move-result-object v6

    .line 1206
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    if-nez v7, :cond_6e

    .line 1209
    invoke-virtual {p1, v6}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1210
    iget v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1211
    .local v4, "period":J
    sget v0, MIN_UPDATE_PERIOD:I

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_63

    .line 1212
    sget v0, MIN_UPDATE_PERIOD:I

    int-to-long v4, v0

    .line 1214
    :cond_63
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1218
    .end local v4    # "period":J
    .end local v6    # "broadcast":Landroid/app/PendingIntent;
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "cocktailIds":[I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "token":J
    :cond_6e
    return-void

    .restart local v6    # "broadcast":Landroid/app/PendingIntent;
    :cond_6f
    move v7, v1

    .line 1195
    goto :goto_1f

    .line 1206
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "cocktailIds":[I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "token":J
    :catchall_71
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeAllUpdatedCocktailsLocked()V
    .registers 7

    .prologue
    .line 482
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 483
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_25

    .line 484
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 485
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 486
    invoke-direct {p0, v1}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 483
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 489
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_25
    return-void
.end method

.method private removeCocktailInHostLocked(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 1572
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1574
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->removeCocktail(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1579
    :cond_d
    :goto_d
    return-void

    .line 1575
    :catch_e
    move-exception v0

    .line 1576
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_d
.end method

.method private removeCocktailLocked(I)V
    .registers 6
    .param p1, "cocktailId"    # I

    .prologue
    .line 1559
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1560
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_1d
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1563
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_3c

    .line 1564
    iget-object v1, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1565
    invoke-direct {p0, v0}, unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1567
    invoke-direct {p0, p1}, removeCocktailInHostLocked(I)V

    .line 1569
    :cond_3c
    return-void
.end method

.method private removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1548
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 1549
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_21
    iget-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1552
    invoke-direct {p0, p1}, unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1554
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, removeCocktailInHostLocked(I)V

    .line 1555
    invoke-direct {p0, p1}, sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1556
    return-void
.end method

.method private removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 808
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, removeCocktailLocked(I)V

    .line 809
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_18

    .line 810
    iget-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 813
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 819
    :cond_24
    iget-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 820
    const/4 v0, 0x1

    :goto_2e
    return v0

    .line 815
    :cond_2f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 816
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 780
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_1d

    .line 781
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeProvidersForPackageLocked : pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_1d
    const/4 v4, 0x0

    .line 784
    .local v4, "providersRemoved":Z
    const/4 v5, 0x0

    .line 785
    .local v5, "toolsUpdated":Z
    iget-object v6, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 786
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_50

    .line 787
    iget-object v6, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 788
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 789
    invoke-direct {p0, v2, v1}, removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    .line 790
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4d

    .line 791
    const/4 v5, 0x1

    .line 786
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 795
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_50
    if-eqz v4, :cond_74

    .line 796
    if-eqz v5, :cond_57

    .line 797
    invoke-direct {p0}, updateToolLauncher()V

    .line 799
    :cond_57
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 801
    const-string v6, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 804
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_74
    return v4
.end method

.method private removeUpdatedCocktailsExceptContextual()V
    .registers 8

    .prologue
    .line 492
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 493
    :try_start_3
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 494
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_31

    .line 495
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 496
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2e

    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 498
    invoke-direct {p0, v1}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 494
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 501
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_31
    monitor-exit v4

    .line 502
    return-void

    .line 501
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v3
.end method

.method private requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 7
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    .line 341
    if-eqz p1, :cond_12

    .line 342
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 343
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_e

    .line 344
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_22

    .line 356
    :cond_e
    invoke-direct {p0, p1}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 357
    const/4 v1, 0x1

    .line 359
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_12
    :goto_12
    return v1

    .line 348
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_13
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_12

    .line 344
    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_13
        0x20 -> :sswitch_13
        0x80 -> :sswitch_13
    .end sparse-switch
.end method

.method private requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 7
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x1

    .line 321
    if-eqz p1, :cond_1e

    .line 322
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 323
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_e

    .line 324
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_20

    .line 334
    :cond_e
    :goto_e
    invoke-direct {p0, p1, v1}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 337
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :goto_11
    return v1

    .line 328
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_12
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_e

    .line 337
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_11

    .line 324
    :sswitch_data_20
    .sparse-switch
        0x4 -> :sswitch_12
        0x20 -> :sswitch_12
        0x80 -> :sswitch_12
    .end sparse-switch
.end method

.method private resetLoadedDataLocked()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 518
    const/4 v0, 0x0

    iput v0, p0, mNextCocktailId:I

    .line 519
    iget v0, p0, mNextCocktailId:I

    iget v1, p0, mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, mNextCocktailId:I

    .line 520
    return-void
.end method

.method private saveStateAsync()V
    .registers 3

    .prologue
    .line 889
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    return-void
.end method

.method private saveStateLocked()V
    .registers 7

    .prologue
    .line 903
    invoke-direct {p0}, savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 906
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_4
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 907
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v2}, writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 908
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 916
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_11
    return-void

    .line 910
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_12
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 911
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 913
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .registers 5

    .prologue
    .line 1052
    iget v3, p0, mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1053
    .local v0, "dir":Ljava/io/File;
    iget v3, p0, mUserId:I

    invoke-static {v3}, getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1054
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    iget v3, p0, mUserId:I

    if-nez v3, :cond_29

    .line 1055
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1056
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1058
    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/cocktails.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1061
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_29
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 7
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "visibility"    # I

    .prologue
    .line 1155
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    .line 1156
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendCocktailChangedVisibilityIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v1, "cocktailVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1163
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1164
    return-void
.end method

.method private sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1144
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_21

    .line 1145
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDisableIntentLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_21
    invoke-direct {p0, p1}, cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1150
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1151
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1152
    return-void
.end method

.method private sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V
    .registers 7
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1167
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    .line 1168
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDragEventLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1172
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1173
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1174
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1175
    return-void
.end method

.method private sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "forcely"    # Z

    .prologue
    .line 1096
    if-eqz p1, :cond_2b

    .line 1097
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1098
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEnableAndUpdateBroadcastLocked : cocktail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_2b
    :goto_2b
    return-void

    .line 1101
    :cond_2c
    if-nez p2, :cond_38

    iget-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1102
    :cond_38
    invoke-direct {p0, p1}, sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1103
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_2b
.end method

.method private sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1109
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_21

    .line 1110
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEnableIntentLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_21
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->isEnable()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1113
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEnableIntentLocked : cocktail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :goto_4a
    return-void

    .line 1116
    :cond_4b
    invoke-direct {p0, p1}, registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1119
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1120
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4a
.end method

.method private sendInitialBroadcasts()V
    .registers 3

    .prologue
    .line 1082
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1083
    :try_start_3
    invoke-direct {p0}, sendInitialBroadcastsLocked()V

    .line 1084
    monitor-exit v1

    .line 1085
    return-void

    .line 1084
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private sendInitialBroadcastsLocked()V
    .registers 6

    .prologue
    .line 1088
    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1089
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1090
    .local v3, "id":I
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1091
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_a

    .line 1093
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_27
    return-void
.end method

.method private sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1178
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_21

    .line 1179
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpdateFeedsBroadcastLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1185
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1186
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "intentName"    # Ljava/lang/String;
    .param p3, "forcely"    # Z

    .prologue
    .line 1124
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->isEnable()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1125
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_29
    :goto_29
    return-void

    .line 1128
    :cond_2a
    if-nez p3, :cond_36

    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v3, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1129
    :cond_36
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_57

    .line 1130
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1135
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    aput v3, v0, v2

    .line 1136
    const-string v2, "cocktailIds"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1137
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1138
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1139
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_29
.end method

.method private setModeLocked(ILjava/lang/String;I)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    packed-switch p1, :pswitch_data_5c

    .line 391
    const/4 v3, 0x2

    if-ne p3, v3, :cond_35

    .line 392
    invoke-direct {p0}, removeAllUpdatedCocktailsLocked()V

    .line 401
    :cond_a
    invoke-direct {p0, p2}, findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 403
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 404
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_12

    .line 387
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2e
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 388
    invoke-direct {p0}, sendInitialBroadcastsLocked()V

    .line 408
    :cond_34
    return-void

    .line 394
    :cond_35
    const/4 v3, 0x4

    invoke-direct {p0, v3}, findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 396
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 397
    invoke-direct {p0, v0}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_3e

    .line 385
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method private systemReady()V
    .registers 3

    .prologue
    .line 169
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 170
    :try_start_3
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 7
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1764
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    .line 1766
    .local v0, "cocktailId":I
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1768
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1769
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1770
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_e

    .line 1771
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1773
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1774
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1775
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 1778
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_38
    invoke-direct {p0, p1}, decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1779
    return-void
.end method

.method private unsetModeLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1b

    .line 422
    invoke-direct {p0, p2}, findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 424
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v0}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_b

    .line 427
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1b
    return-void
.end method

.method private updateCocktailAttribute()V
    .registers 8

    .prologue
    .line 215
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 216
    :try_start_3
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 217
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_57

    .line 218
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 219
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v3}, checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 220
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 221
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 223
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 217
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 226
    :cond_42
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 227
    invoke-direct {p0, v1}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_3f

    .line 231
    .end local v0    # "N":I
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i":I
    :catchall_54
    move-exception v3

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v3

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_57
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_54

    .line 232
    return-void
.end method

.method private updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "lastEnabled"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 240
    :try_start_3
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 241
    iget-object v1, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "newEnabled":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 243
    move-object p1, v0

    .line 244
    invoke-direct {p0}, updateFromSettingsLocked()V

    .line 246
    :cond_18
    monitor-exit v2

    .line 247
    return-object p1

    .line 246
    .end local v0    # "newEnabled":Ljava/lang/String;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 1429
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeedsLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_21
    iget-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1432
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->updateFeeds(ILjava/util/List;)V

    .line 1436
    :goto_36
    return-void

    .line 1434
    :cond_37
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeedsLocked : reject"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private updateFromSettingsLocked()V
    .registers 7

    .prologue
    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 255
    .local v3, "id":I
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 256
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_13

    .line 257
    invoke-direct {p0, v1}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_13

    .line 260
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 261
    .restart local v3    # "id":I
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 262
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_35

    .line 263
    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_35

    .line 266
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_54
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 22
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 703
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 704
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateProvidersForPackageLocked : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_21
    const/4 v15, 0x0

    .line 707
    .local v15, "providersUpdated":Z
    const/16 v16, 0x0

    .line 708
    .local v16, "toolsUpdated":Z
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v14, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v13

    .line 710
    .local v13, "intentName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 713
    .local v10, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_67

    const/4 v8, 0x0

    .line 714
    .local v8, "N":I
    :goto_44
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v6

    .line 715
    .local v6, "categoryIds":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_51
    if-ge v11, v8, :cond_fc

    .line 716
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 717
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 718
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v2, v7

    if-eqz v2, :cond_6c

    .line 715
    :cond_64
    :goto_64
    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    .line 713
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "categoryIds":I
    .end local v8    # "N":I
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "i":I
    :cond_67
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_44

    .line 721
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "categoryIds":I
    .restart local v8    # "N":I
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    :cond_6c
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 722
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .local v4, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    .line 724
    .local v3, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v3, :cond_be

    .line 725
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 726
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_a1

    .line 728
    const/16 v16, 0x1

    .line 730
    :cond_a1
    move-object/from16 v0, p0

    iget-object v2, v0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 731
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 735
    :goto_b5
    const/4 v15, 0x1

    goto :goto_64

    .line 733
    :cond_b7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_b5

    .line 737
    :cond_be
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_64

    move-object/from16 v2, p0

    move/from16 v7, p2

    .line 738
    invoke-direct/range {v2 .. v7}, parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 739
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_e5

    .line 741
    const/16 v16, 0x1

    .line 745
    :cond_dd
    :goto_dd
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 746
    const/4 v15, 0x1

    goto :goto_64

    .line 742
    :cond_e5
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v7, 0x200

    if-ne v2, v7, :cond_dd

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v7, 0x6

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    goto :goto_dd

    .line 751
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v2, v0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 752
    add-int/lit8 v11, v8, -0x1

    :goto_106
    if-ltz v11, :cond_157

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 754
    .restart local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_154

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_154

    .line 756
    if-eqz p3, :cond_143

    .line 757
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_143
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_14e

    .line 760
    const/16 v16, 0x1

    .line 762
    :cond_14e
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v15

    .line 752
    :cond_154
    add-int/lit8 v11, v11, -0x1

    goto :goto_106

    .line 765
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_157
    if-eqz v15, :cond_16a

    .line 766
    if-eqz v16, :cond_15e

    .line 767
    invoke-direct/range {p0 .. p0}, updateToolLauncher()V

    .line 769
    :cond_15e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16b

    .line 776
    .end local v15    # "providersUpdated":Z
    :cond_16a
    :goto_16a
    return v15

    .line 771
    .restart local v15    # "providersUpdated":Z
    :cond_16b
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 772
    const/4 v15, 0x0

    goto :goto_16a
.end method

.method private updateToolLauncher()V
    .registers 4

    .prologue
    .line 1235
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1237
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateToolLauncher(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1242
    :cond_d
    :goto_d
    return-void

    .line 1238
    :catch_e
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_d
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 12
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 922
    :try_start_1
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 923
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 924
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 925
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 926
    iget-object v7, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 927
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v0, :cond_5d

    .line 928
    iget-object v7, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 929
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    .line 930
    .local v5, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v5, :cond_5a

    .line 931
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const/4 v7, 0x0

    const-string/jumbo v8, "pkg"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    const/4 v7, 0x0

    const-string v8, "cl"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 934
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 927
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 937
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v5    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_5d
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_67} :catch_68

    .line 942
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_67
    return v6

    .line 940
    :catch_68
    move-exception v2

    .line 941
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v6, 0x0

    goto :goto_67
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 21
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callbacks"    # Landroid/os/IBinder;

    .prologue
    .line 1677
    move-object/from16 v0, p0

    iget-object v14, v0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1678
    :try_start_5
    invoke-direct/range {p0 .. p0}, ensureStateLoadedLocked()V

    .line 1679
    invoke-direct/range {p0 .. p1}, getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1680
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v2, :cond_19

    .line 1681
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad cocktailId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1728
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_16
    move-exception v13

    monitor-exit v14
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v13

    .line 1683
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_19
    :try_start_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    move-result-object v3

    .line 1685
    .local v3, "componentName":Landroid/content/ComponentName;
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v3, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 1687
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6c

    .line 1688
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_52} :catch_52
    .catchall {:try_start_1d .. :try_end_52} :catchall_16

    .line 1691
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_52
    move-exception v6

    .line 1692
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_53
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1700
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_6c
    const/4 v4, 0x0

    .line 1701
    .local v4, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1702
    .local v7, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1703
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 1704
    move-object/from16 v0, p0

    iget-object v13, v0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1705
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1706
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v13, v0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    move-object v5, v4

    .line 1710
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .local v5, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1711
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    if-eq v12, v13, :cond_d8

    .line 1712
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CocktailServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_d8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_db
    .catchall {:try_start_53 .. :try_end_db} :catchall_16

    move-result-wide v10

    .line 1720
    .local v10, "token":J
    :try_start_dc
    new-instance v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v4, v8, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_109

    .line 1721
    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :try_start_e3
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v4, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v13, v0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fd
    .catchall {:try_start_e3 .. :try_end_fd} :catchall_10f

    .line 1725
    :try_start_fd
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 1728
    monitor-exit v14

    .line 1729
    return-void

    .line 1725
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :catchall_109
    move-exception v13

    move-object v4, v5

    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :goto_10b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_10f
    .catchall {:try_start_fd .. :try_end_10f} :catchall_16

    :catchall_10f
    move-exception v13

    goto :goto_10b
.end method

.method public changeVisibleEdgeService(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 1538
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1540
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->changeVisibleEdgeService(ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1545
    :cond_d
    :goto_d
    return-void

    .line 1541
    :catch_e
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_d
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "category"    # I

    .prologue
    .line 1337
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_26

    .line 1338
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCocktail : cocktailId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_26
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1341
    :try_start_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, v3, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1342
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_57

    .line 1343
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    .line 1344
    .local v2, "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v2, :cond_57

    .line 1345
    invoke-virtual {v2, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->setCategory(I)V

    .line 1346
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v6, p0, mUserId:I

    iget-object v7, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1347
    iget-object v3, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_5e

    if-eqz v3, :cond_57

    .line 1349
    :try_start_4e
    iget-object v3, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v5, p0, mUserId:I

    invoke-interface {v3, p2, p3, v5}, Lcom/samsung/android/cocktailbar/ICocktailHost;->closeContextualCocktail(III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_57} :catch_59
    .catchall {:try_start_4e .. :try_end_57} :catchall_5e

    .line 1359
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v4

    .line 1360
    return-void

    .line 1350
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_59
    move-exception v1

    .line 1351
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_57

    .line 1359
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_5e

    throw v3

    .line 1355
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_61
    :try_start_61
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeCocktail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_5e

    goto :goto_57
.end method

.method public deleteHostAndDisableAllCocktails()V
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 186
    invoke-virtual {p0}, removeAllUpdatedCocktails()V

    .line 187
    return-void
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1439
    if-nez p1, :cond_b

    .line 1440
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid provider"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1442
    :cond_b
    iget-object v8, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1443
    :try_start_e
    invoke-direct {p0, p1}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1444
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v2, :cond_67

    .line 1445
    const/4 v6, 0x0

    .line 1446
    .local v6, "include":Z
    iget-object v7, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 1447
    .local v3, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v4, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1449
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v0, :cond_58

    .line 1450
    iget-object v9, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1451
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_46

    .line 1452
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    if-ne v7, v9, :cond_49

    .line 1453
    const/4 v6, 0x1

    .line 1449
    :cond_46
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 1456
    :cond_49
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1469
    .end local v0    # "N":I
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :catchall_55
    move-exception v7

    monitor-exit v8
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_55

    throw v7

    .line 1459
    .restart local v0    # "N":I
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "include":Z
    :cond_58
    if-eqz v6, :cond_67

    .line 1460
    :try_start_5a
    invoke-direct {p0, v2}, removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1461
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;

    invoke-direct {v9, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1469
    .end local v0    # "N":I
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :cond_67
    monitor-exit v8
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_55

    .line 1470
    return-void
.end method

.method public disableUser(I)V
    .registers 5
    .param p1, "userType"    # I

    .prologue
    .line 438
    sparse-switch p1, :sswitch_data_12

    .line 448
    :goto_3
    return-void

    .line 440
    :sswitch_4
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, mUserId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->resetMode(II)V

    goto :goto_3

    .line 443
    :sswitch_d
    invoke-direct {p0}, removeUpdatedCocktailsExceptContextual()V

    goto :goto_3

    .line 438
    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_d
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2123
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    :goto_32
    return-void

    .line 2129
    :cond_33
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2130
    :try_start_36
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2131
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    if-ge v3, v0, :cond_4d

    .line 2132
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 2133
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v1, p2}, dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V

    .line 2131
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 2135
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_7d

    .line 2136
    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    if-eqz v4, :cond_77

    .line 2137
    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 2138
    .local v2, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnabledCocktails : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    .end local v2    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_77
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 2135
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_7d
    move-exception v4

    :try_start_7e
    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v4
.end method

.method public enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 5
    .param p1, "userType"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 430
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 431
    invoke-virtual {p0}, initialize()V

    .line 435
    :cond_6
    :goto_6
    return-void

    .line 432
    :cond_7
    if-eqz p2, :cond_6

    .line 433
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, mUserId:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_6
.end method

.method public getAllCocktailIds(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1620
    :try_start_3
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1621
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_22

    .line 1622
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1624
    :cond_22
    monitor-exit v3

    .line 1625
    return-void

    .line 1624
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 1628
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1629
    :try_start_3
    invoke-direct {p0, p1}, getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1630
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1473
    if-nez p1, :cond_b

    .line 1474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1476
    :cond_b
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1477
    :try_start_e
    invoke-direct {p0, p1}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1478
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1a

    .line 1479
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    monitor-exit v2

    .line 1481
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_19

    .line 1482
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1486
    if-nez p1, :cond_b

    .line 1487
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1489
    :cond_b
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1490
    :try_start_e
    invoke-direct {p0, p1}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1491
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_24

    .line 1492
    invoke-direct {p0, v0}, getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I

    move-result-object v1

    monitor-exit v2

    .line 1494
    :goto_23
    return-object v1

    :cond_24
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_23

    .line 1496
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getEnabledCocktailIds()Ljava/util/ArrayList;
    .registers 2
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
    .line 1615
    iget-object v0, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1065
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_d

    .line 1066
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "initialize"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_d
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1069
    :try_start_10
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 1070
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_2c

    .line 1071
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 1072
    .local v0, "currentMode":I
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 1073
    .local v1, "mode":I
    if-eq v0, v1, :cond_2f

    .line 1074
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 1078
    :cond_29
    :goto_29
    iput-boolean v4, p0, mInitialzed:Z

    .line 1079
    return-void

    .line 1070
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2

    .line 1075
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_2f
    if-ne v1, v4, :cond_29

    .line 1076
    invoke-direct {p0}, sendInitialBroadcasts()V

    goto :goto_29
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1500
    iget-object v0, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1504
    if-nez p2, :cond_b

    .line 1505
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1507
    :cond_b
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1508
    :try_start_e
    invoke-direct {p0, p2}, lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1509
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_2a

    .line 1510
    iget-object v1, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    monitor-exit v2

    .line 1513
    :goto_29
    return v1

    .line 1512
    :cond_2a
    monitor-exit v2

    .line 1513
    const/4 v1, 0x0

    goto :goto_29

    .line 1512
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public isValidHost()Z
    .registers 2

    .prologue
    .line 2119
    iget-object v0, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public notifyCocktailBarWakeUp(ZII)V
    .registers 12
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 1978
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1979
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1980
    .local v1, "currentUserId":I
    const/4 v4, 0x0

    .line 1981
    .local v4, "ownerId":I
    if-eq v4, v1, :cond_29

    .line 1982
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyCocktailBarWakeUp supported only owner user, currentUID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    .end local v1    # "currentUserId":I
    .end local v4    # "ownerId":I
    :goto_28
    return-void

    .line 1987
    :cond_29
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1988
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_41

    .line 1989
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp was not supported with mobile keypad"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1993
    :cond_41
    if-eqz p1, :cond_51

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_51

    .line 1994
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;

    invoke-direct {v6, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2006
    :cond_51
    iget-object v5, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v5, :cond_62

    .line 2008
    :try_start_55
    iget-object v5, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v5, v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v5, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyWakeUpState(ZII)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_28

    .line 2009
    :catch_5d
    move-exception v2

    .line 2010
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    .line 2014
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_62
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp: startActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.app.cocktailbarservice"

    const-string v6, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2017
    const-string/jumbo v5, "keycode"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2018
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_28
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I

    .prologue
    .line 1363
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1364
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1365
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_10

    .line 1366
    invoke-direct {p0, v0, p3}, notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1368
    :cond_10
    monitor-exit v2

    .line 1369
    return-void

    .line 1368
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1652
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1653
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCocktailVisibiltyChanged : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_1d
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1656
    :try_start_20
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1657
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_2d

    .line 1658
    invoke-direct {p0, v0, p2}, sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1660
    :cond_2d
    monitor-exit v2

    .line 1661
    return-void

    .line 1660
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 1642
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1644
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyKeyguardState(ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1649
    :cond_d
    :goto_d
    return-void

    .line 1645
    :catch_e
    move-exception v0

    .line 1646
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_d
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1881
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1882
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1883
    .local v2, "added":Z
    const/4 v4, 0x0

    .line 1884
    .local v4, "changed":Z
    const/4 v9, 0x0

    .line 1885
    .local v9, "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1886
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1887
    const/4 v2, 0x1

    .line 1906
    :goto_18
    if-eqz v9, :cond_1d

    array-length v13, v9

    if-nez v13, :cond_4f

    .line 1949
    :cond_1d
    :goto_1d
    return-void

    .line 1888
    :cond_1e
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 1889
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1890
    const/4 v2, 0x0

    goto :goto_18

    .line 1892
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1893
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_1d

    .line 1896
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1897
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_1d

    .line 1900
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    .end local v9    # "pkgList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v10, v9, v13

    .line 1903
    .restart local v9    # "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1904
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_18

    .line 1909
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_4f
    if-nez v2, :cond_53

    if-eqz v4, :cond_d0

    .line 1910
    :cond_53
    const/4 v11, 0x0

    .line 1911
    .local v11, "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1912
    :try_start_59
    invoke-direct/range {p0 .. p0}, ensureStateLoadedLocked()V

    .line 1913
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1914
    .local v5, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_6d

    if-eqz v5, :cond_94

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 1915
    :cond_6d
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .local v6, "i":I
    :goto_75
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_ba

    .line 1916
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_82
    if-ge v7, v8, :cond_91

    aget-object v10, v3, v7

    .line 1917
    .restart local v10    # "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v13}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1916
    add-int/lit8 v7, v7, 0x1

    goto :goto_82

    .line 1915
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 1921
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_94
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .restart local v6    # "i":I
    :goto_9c
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_ba

    .line 1922
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_a9
    if-ge v7, v8, :cond_b7

    aget-object v10, v3, v7

    .line 1923
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, addProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1922
    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    .line 1921
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_b7
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 1927
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_ba
    invoke-direct/range {p0 .. p0}, saveStateAsync()V

    .line 1928
    monitor-exit v14
    :try_end_be
    .catchall {:try_start_59 .. :try_end_be} :catchall_cd

    .line 1929
    if-eqz v11, :cond_1d

    .line 1930
    move-object/from16 v0, p0

    iget-object v13, v0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1d

    .line 1928
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "i":I
    :catchall_cd
    move-exception v13

    :try_start_ce
    monitor-exit v14
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v13

    .line 1933
    .end local v11    # "res":Z
    :cond_d0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1934
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_df

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 1936
    :cond_df
    const/4 v11, 0x0

    .line 1937
    .restart local v11    # "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1938
    :try_start_e5
    invoke-direct/range {p0 .. p0}, ensureStateLoadedLocked()V

    .line 1939
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_eb
    if-ge v7, v8, :cond_fc

    aget-object v10, v3, v7

    .line 1940
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1941
    invoke-direct/range {p0 .. p0}, saveStateAsync()V

    .line 1939
    add-int/lit8 v7, v7, 0x1

    goto :goto_eb

    .line 1943
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_fc
    monitor-exit v14
    :try_end_fd
    .catchall {:try_start_e5 .. :try_end_fd} :catchall_10c

    .line 1944
    if-eqz v11, :cond_1d

    .line 1945
    move-object/from16 v0, p0

    iget-object v13, v0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1d

    .line 1943
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_10c
    move-exception v13

    :try_start_10d
    monitor-exit v14
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v13
.end method

.method public onConfigurationChanged()V
    .registers 10

    .prologue
    .line 523
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 524
    .local v5, "revised":Ljava/util/Locale;
    if-eqz v5, :cond_12

    iget-object v6, p0, mLocale:Ljava/util/Locale;

    if-eqz v6, :cond_12

    iget-object v6, p0, mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 525
    :cond_12
    iput-object v5, p0, mLocale:Ljava/util/Locale;

    .line 526
    iget-object v7, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v7

    .line 527
    :try_start_17
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 528
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 529
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 530
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_27
    if-ltz v3, :cond_49

    .line 531
    iget-object v6, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 532
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    .line 533
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 534
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v8

    invoke-direct {p0, v6, v8, v4}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    .line 530
    :cond_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 537
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_49
    invoke-direct {p0}, saveStateAsync()V

    .line 538
    monitor-exit v7

    .line 540
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_4d
    return-void

    .line 538
    :catchall_4e
    move-exception v6

    monitor-exit v7
    :try_end_50
    .catchall {:try_start_17 .. :try_end_50} :catchall_4e

    throw v6
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1268
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1269
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_1d
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1272
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1273
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_49

    .line 1274
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailContentView(Landroid/widget/RemoteViews;Z)V

    .line 1275
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, mUserId:I

    iget-object v6, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1276
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_50

    if-eqz v2, :cond_49

    .line 1278
    :try_start_40
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4b
    .catchall {:try_start_40 .. :try_end_49} :catchall_50

    .line 1287
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v3

    .line 1288
    return-void

    .line 1279
    :catch_4b
    move-exception v1

    .line 1280
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_49

    .line 1287
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw v2

    .line 1284
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_53
    :try_start_53
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_53 .. :try_end_72} :catchall_50

    goto :goto_49
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "helpView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1291
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1292
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateHelpView : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_1d
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1295
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1296
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_49

    .line 1297
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V

    .line 1298
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, mUserId:I

    iget-object v6, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1299
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_50

    if-eqz v2, :cond_49

    .line 1301
    :try_start_40
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4b
    .catchall {:try_start_40 .. :try_end_49} :catchall_50

    .line 1310
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v3

    .line 1311
    return-void

    .line 1302
    :catch_4b
    move-exception v1

    .line 1303
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_49

    .line 1310
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw v2

    .line 1307
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_53
    :try_start_53
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateHelpView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_53 .. :try_end_72} :catchall_50

    goto :goto_49
.end method

.method public removeAllUpdatedCocktails()V
    .registers 3

    .prologue
    .line 476
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 477
    :try_start_3
    invoke-direct {p0}, removeAllUpdatedCocktailsLocked()V

    .line 478
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public removeCocktail(I)V
    .registers 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 1532
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1533
    :try_start_3
    invoke-direct {p0, p1}, removeCocktailLocked(I)V

    .line 1534
    monitor-exit v1

    .line 1535
    return-void

    .line 1534
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public requestToDisableCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 278
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 279
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToDisableCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1d
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 282
    :try_start_20
    iget-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 283
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .registers 9
    .param p1, "category"    # I

    .prologue
    .line 304
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1d

    .line 305
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToDisableCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1d
    const/4 v3, 0x0

    .line 308
    .local v3, "res":Z
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 309
    :try_start_21
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 310
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v0, :cond_42

    .line 311
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 312
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_3f

    .line 313
    invoke-direct {p0, v1}, requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 310
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 316
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_42
    monitor-exit v5

    .line 317
    return v3

    .line 316
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_44
    move-exception v4

    monitor-exit v5
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_44

    throw v4
.end method

.method public requestToUpdateCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 269
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 270
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToUpdateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1d
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 273
    :try_start_20
    iget-object v0, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 274
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .registers 9
    .param p1, "category"    # I

    .prologue
    .line 287
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1d

    .line 288
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToUpdateCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1d
    const/4 v3, 0x0

    .line 291
    .local v3, "res":Z
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 292
    :try_start_21
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 293
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v0, :cond_42

    .line 294
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 295
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_3f

    .line 296
    invoke-direct {p0, v1}, requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 293
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 299
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_42
    monitor-exit v5

    .line 300
    return v3

    .line 299
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_44
    move-exception v4

    monitor-exit v5
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_44

    throw v4
.end method

.method public requestUpdateFeeds()V
    .registers 7

    .prologue
    .line 363
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_c

    .line 364
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestUpdateFeeds"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_c
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 367
    :try_start_f
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 368
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_30

    .line 369
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 370
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 371
    invoke-direct {p0, v1}, sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 368
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 374
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_30
    monitor-exit v4

    .line 375
    return-void

    .line 374
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v3
.end method

.method public resetMode(ILjava/lang/String;)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 412
    return-void
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1664
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1665
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDragEvent : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_1d
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1668
    :try_start_20
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1669
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_2d

    .line 1670
    invoke-direct {p0, v0, p2}, sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V

    .line 1672
    :cond_2d
    monitor-exit v2

    .line 1673
    return-void

    .line 1672
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1871
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1873
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->sendExtraData(ILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1878
    :cond_d
    :goto_d
    return-void

    .line 1874
    :catch_e
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "restart"    # Z

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 191
    :try_start_4
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 192
    iget v2, p0, mTickerDisableflags:I

    invoke-virtual {p0, v2}, setDisableTickerView(I)V

    .line 193
    iget-boolean v2, p0, mInitialzed:Z

    if-eqz v2, :cond_17

    if-nez p4, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, mInitialzed:Z

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setDisableTickerView(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 1860
    iput p1, p0, mTickerDisableflags:I

    .line 1861
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_f

    .line 1863
    :try_start_6
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->setDisableTickerView(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1868
    :cond_f
    :goto_f
    return-void

    .line 1864
    :catch_10
    move-exception v0

    .line 1865
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_f
.end method

.method public setEnabledCocktailIds([I)V
    .registers 9
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 1595
    iget-object v5, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1596
    :try_start_3
    array-length v0, p1

    .line 1597
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v2, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_26

    .line 1599
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    aget v6, p1, v3

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1600
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_23

    .line 1601
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1604
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_26
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;

    invoke-direct {v6, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1611
    monitor-exit v5

    .line 1612
    return-void

    .line 1611
    .end local v0    # "N":I
    .end local v2    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v4
.end method

.method public setMode(ILjava/lang/String;I)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 378
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 379
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, setModeLocked(ILjava/lang/String;I)V

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I

    .prologue
    .line 1314
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1315
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_1d
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1318
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1319
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 1320
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, mUserId:I

    iget-object v6, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1322
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_52

    if-eqz v2, :cond_4b

    .line 1324
    :try_start_42
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, mUserId:I

    invoke-interface {v2, p2, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->showCocktail(II)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4d
    .catchall {:try_start_42 .. :try_end_4b} :catchall_52

    .line 1333
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v3

    .line 1334
    return-void

    .line 1325
    :catch_4d
    move-exception v1

    .line 1326
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_4b

    .line 1333
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_52
    move-exception v2

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    throw v2

    .line 1330
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_55
    :try_start_55
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_52

    goto :goto_4b
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .registers 9
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .prologue
    const/4 v4, 0x1

    .line 198
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 199
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 200
    invoke-direct {p0}, updateCocktailAttribute()V

    .line 202
    :cond_13
    iget-boolean v2, p0, mInitialzed:Z

    if-nez v2, :cond_2e

    .line 203
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 204
    .local v0, "currentMode":I
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 205
    .local v1, "mode":I
    if-eq v0, v1, :cond_2f

    .line 206
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 210
    :cond_2c
    :goto_2c
    iput-boolean v4, p0, mInitialzed:Z

    .line 212
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_2e
    return-void

    .line 207
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_2f
    if-ne v1, v4, :cond_2c

    .line 208
    invoke-direct {p0}, sendInitialBroadcasts()V

    goto :goto_2c
.end method

.method public switchDefaultCocktail()V
    .registers 4

    .prologue
    .line 1850
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_d

    .line 1852
    :try_start_4
    iget-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->switchDefaultCocktail(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1857
    :cond_d
    :goto_d
    return-void

    .line 1853
    :catch_e
    move-exception v0

    .line 1854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public systemDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;->unregisterContentObserver()V

    .line 176
    iput-object v1, p0, mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 177
    invoke-virtual {p0}, removeAllUpdatedCocktails()V

    .line 178
    iput-object v1, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 179
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 180
    :try_start_10
    invoke-direct {p0}, resetLoadedDataLocked()V

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 9
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1733
    if-nez p2, :cond_a

    .line 1734
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1736
    :cond_a
    iget-object v4, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1737
    :try_start_d
    invoke-direct {p0}, ensureStateLoadedLocked()V

    .line 1740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1742
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1748
    invoke-direct {p0, p1}, getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1749
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v0, :cond_36

    .line 1750
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad cocktailId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1759
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_33

    throw v3

    .line 1753
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_36
    :try_start_36
    iget-object v3, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1755
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1756
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1757
    iget-object v3, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :cond_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_33

    .line 1760
    return-void
.end method

.method public unsetMode(ILjava/lang/String;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 416
    :try_start_3
    invoke-direct {p0, p1, p2}, unsetModeLocked(ILjava/lang/String;)V

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public updateCocktail(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 1523
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1524
    :try_start_3
    iget-object v1, p0, mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1525
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_11

    .line 1526
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 1528
    :cond_11
    monitor-exit v2

    .line 1529
    return-void

    .line 1528
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    .line 1245
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1246
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_1d
    iget-object v3, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1249
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1250
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_48

    .line 1251
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1252
    iget-object v2, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, mUserId:I

    iget-object v6, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1253
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_4f

    if-eqz v2, :cond_48

    .line 1255
    :try_start_3f
    iget-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, mUserId:I

    invoke-interface {v2, p2, v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_48} :catch_4a
    .catchall {:try_start_3f .. :try_end_48} :catchall_4f

    .line 1264
    :cond_48
    :goto_48
    :try_start_48
    monitor-exit v3

    .line 1265
    return-void

    .line 1256
    :catch_4a
    move-exception v1

    .line 1257
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_48

    .line 1264
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v2

    .line 1261
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_52
    :try_start_52
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_4f

    goto :goto_48
.end method

.method public updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1419
    .local p3, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    iget-object v2, p0, mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1420
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1421
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_10

    .line 1422
    invoke-direct {p0, v0, p3}, updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V

    .line 1424
    :cond_10
    monitor-exit v2

    .line 1425
    return-void

    .line 1424
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .registers 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 1959
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateLongpressGesture(Z)V

    .line 1960
    return-void
.end method

.method public updateSysfsBarLength(I)V
    .registers 2
    .param p1, "barLength"    # I

    .prologue
    .line 1967
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 1968
    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .registers 2
    .param p1, "deadzone"    # I

    .prologue
    .line 1963
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsDeadZone(I)V

    .line 1964
    return-void
.end method

.method public updateSysfsGripDisable(Z)V
    .registers 2
    .param p1, "bDisable"    # Z

    .prologue
    .line 1971
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    .line 1972
    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .registers 4
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 1955
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 1956
    return-void
.end method
