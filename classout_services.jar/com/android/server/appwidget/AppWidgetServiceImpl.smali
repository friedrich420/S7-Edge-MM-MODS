.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
.implements Lcom/android/server/WidgetBackupProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final DEBUG_NO_SHIP:Z

.field private static DEBUG_REMOTEVIEWS:Z = false

.field private static final EMERGENCY_MODE_ENABLED:Z

.field private static final IS_TABLET:Z

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MAX_HOST_HISTORY:I = 0x7

.field private static final MIN_UPDATE_PERIOD:I

.field private static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final NEW_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

.field private static final NEW_WEATHER_WIDGET_PKG:Ljava/lang/String; = "com.sec.android.daemonapp"

.field private static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field private static final OLD_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

.field private static final OLD_WEATHER_WIDGET_PKG_PREFIX:Ljava/lang/String; = "com.sec.android.widgetapp.at.hero"

.field private static final OPTION_APPWIDGET_ID_FORCE_ALLOC_HOST_ID:Ljava/lang/String; = "appWidgetIdForceAllocHostId"

.field private static final OPTION_APPWIDGET_ID_FORCE_ALLOC_MODE:Ljava/lang/String; = "appWidgetIdForceAllocMode"

.field private static final SEC_LAUNCHER_HOST_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field private static final TAG_UNDEFINED:I = -0x1

.field private static final UNKNOWN_UID:I = -0x1

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

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

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mHostHistory:[Ljava/lang/String;

.field private mHostHistoryIdx:I

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMaxWidgetBitmapMemory:I

.field private final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;

.field private final mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    sput-boolean v2, DEBUG:Z

    .line 139
    sput-boolean v2, DEBUG_REMOTEVIEWS:Z

    .line 141
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_6a

    move v0, v1

    :goto_e
    sput-boolean v0, DEBUG_NO_SHIP:Z

    .line 149
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_6c

    move v0, v2

    :goto_15
    sput v0, MIN_UPDATE_PERIOD:I

    .line 250
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_3b
    move v0, v1

    :goto_3c
    sput-boolean v0, EMERGENCY_MODE_ENABLED:Z

    .line 257
    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "com.sec.android.widgetapp.ap.weather.widget.appwidget.WeatherAppWidget"

    aput-object v3, v0, v2

    const-string v3, "com.sec.android.widgetapp.ap.weather.widget.easywidget.EasyWeatherAppWidget"

    aput-object v3, v0, v1

    sput-object v0, OLD_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    .line 261
    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

    aput-object v3, v0, v2

    const-string v2, "com.sec.android.daemonapp.easywidget.EasyWeatherAppWidget"

    aput-object v2, v0, v1

    sput-object v0, NEW_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, IS_TABLET:Z

    return-void

    :cond_6a
    move v0, v2

    .line 141
    goto :goto_e

    .line 149
    :cond_6c
    const v0, 0x1b7740

    goto :goto_15

    :cond_70
    move v0, v2

    .line 250
    goto :goto_3c
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 162
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWidgets:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHosts:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mProviders:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 214
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWidgetPackages:Landroid/util/SparseArray;

    .line 234
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 241
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, mHostHistory:[Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, mHostHistoryIdx:I

    .line 272
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 273
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    .line 274
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 275
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 276
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 277
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, mSaveStateHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, mCallbackHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 280
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 281
    invoke-direct {p0}, computeMaximumWidgetBitmapMemory()V

    .line 282
    invoke-direct {p0}, registerBroadcastReceiver()V

    .line 283
    invoke-direct {p0}, registerOnCrossProfileProvidersChangedListener()V

    .line 284
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    invoke-direct {p0}, onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/widget/RemoteViews;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onUserStarted(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, saveStateLocked(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onUserStopped(I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1}, serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 133
    iget-object v0, p0, mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1}, serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1}, serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$3500()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, IS_TABLET:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, renameClassForWeatherWidget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .prologue
    .line 133
    invoke-direct {p0, p1}, lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, incrementAndGetAppWidgetIdLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, saveGroupStateAsync(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onKNOXStarted(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 133
    invoke-direct {p0, p1}, unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, EMERGENCY_MODE_ENABLED:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, onEmergencyDisabled(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 11
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2076
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    .line 2130
    :cond_d
    :goto_d
    return v5

    .line 2080
    :cond_e
    sget-boolean v6, EMERGENCY_MODE_ENABLED:Z

    if-eqz v6, :cond_87

    .line 2081
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 2082
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_d

    .line 2096
    :cond_20
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v6, v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2100
    .local v3, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v3, p1}, parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v2

    .line 2101
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_d

    .line 2105
    invoke-direct {p0, v3}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v1

    .line 2109
    .local v1, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v1, :cond_4e

    .line 2110
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2111
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v1

    .line 2114
    .end local v4    # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_4e
    if-eqz v1, :cond_91

    .line 2115
    iget-boolean v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v6, :cond_7c

    iget-boolean v6, p0, mSafeMode:Z

    if-nez v6, :cond_7c

    .line 2117
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2118
    iput-boolean v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 2119
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2120
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_7c

    .line 2121
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider placeholder now reified: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_7c
    :goto_7c
    const/4 v5, 0x1

    goto :goto_d

    .line 2086
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_7e
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_d

    .line 2091
    :cond_87
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_d

    .line 2125
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v3    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_91
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c
.end method

.method private allocateAppWidgetIdWhileBindingLocked(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I
    .param p3, "appWidgetId"    # I
    .param p4, "allocMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 975
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 982
    .local v4, "userId":I
    iget-object v8, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_12

    .line 983
    iget-object v8, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    :cond_12
    const/4 v0, 0x0

    .line 988
    .local v0, "appWidgetIdInUse":Z
    iget-object v8, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 989
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v8, p3, :cond_19

    .line 990
    const/4 v0, 0x1

    goto :goto_19

    .line 997
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2b
    const-string/jumbo v8, "ifEmpty"

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 999
    if-eqz v0, :cond_56

    .line 1000
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not allocate ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " #1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v7, 0x0

    .line 1028
    :cond_55
    :goto_55
    return v7

    .line 1005
    :cond_56
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v3, v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1006
    .local v3, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v3}, lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 1008
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1009
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput p3, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 1010
    iput-object v1, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1012
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-virtual {p0, v6}, addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1016
    invoke-direct {p0, v4, p3}, setMinAppWidgetIdLocked(II)V

    .line 1021
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_55

    .line 1022
    const-string v8, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Allocated widget id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for host "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1024
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_a1
    const-string/jumbo v8, "force"

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_55
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2759
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2760
    .local v2, "loadedWidgetCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_3d

    .line 2761
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 2762
    .local v1, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2764
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-direct {p0, v4}, findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2765
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v4, :cond_1f

    .line 2760
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2771
    :cond_1f
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-direct {p0, v4}, findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2772
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v4, :cond_1c

    .line 2777
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2779
    invoke-virtual {p0, v3}, addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_1c

    .line 2781
    .end local v1    # "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3d
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 3504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3506
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x2000001

    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3512
    return-void

    .line 3510
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .prologue
    .line 1637
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1c

    .line 1638
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelBroadcasts() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_1c
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_36

    .line 1641
    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1644
    .local v0, "token":J
    :try_start_2b
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_37

    .line 1646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1648
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 1650
    .end local v0    # "token":J
    :cond_36
    return-void

    .line 1646
    .restart local v0    # "token":J
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 2944
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2945
    .local v4, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_17

    .line 2946
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2947
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2945
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2950
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_17
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2951
    .local v1, "hostCount":I
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2d

    .line 2952
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2953
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2951
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2955
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2d
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1992
    invoke-static {}, isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    .line 1993
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    .line 1995
    .end local p0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_c
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2002
    invoke-static {}, isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 2003
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2005
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p0

    goto :goto_e
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1985
    invoke-static {}, isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    .line 1986
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p0

    .line 1988
    .end local p0    # "rv":Landroid/widget/RemoteViews;
    :cond_c
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .registers 6

    .prologue
    .line 287
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 288
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 289
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 290
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 293
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iput v3, p0, mMaxWidgetBitmapMemory:I

    .line 294
    return-void
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 1722
    iget-object v3, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1724
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1725
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1726
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1727
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1730
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1731
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1732
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1736
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_3f
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 1610
    invoke-direct {p0, p1}, unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1612
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1613
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1614
    invoke-direct {p0, v0}, pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1616
    invoke-virtual {p0, p1}, removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1618
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1619
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_2e

    .line 1620
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1621
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_2e

    .line 1623
    invoke-direct {p0, p1}, sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1625
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1627
    invoke-direct {p0, v1}, cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1630
    invoke-direct {p0, v1}, sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1634
    :cond_2e
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 7
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .prologue
    .line 1594
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1595
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1596
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1597
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1595
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1599
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_18
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1604
    const-string v3, "AppWidgetServiceImpl"

    const-string/jumbo v4, "deleteHostLocked callbacks : null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host deleted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 10
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2134
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2137
    .local v0, "N":I
    sget-boolean v5, EMERGENCY_MODE_ENABLED:Z

    if-eqz v5, :cond_75

    .line 2138
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2139
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_a2

    .line 2141
    :try_start_18
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2143
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2145
    invoke-direct {p0, p1}, cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2146
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2147
    .local v1, "comp":Landroid/content/ComponentName;
    if-eqz v1, :cond_4e

    .line 2148
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteProviderLocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 2150
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4e
    const-string v5, "AppWidgetServiceImpl"

    const-string/jumbo v6, "deleteProviderLocked component is null"

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_56} :catch_57

    goto :goto_4b

    .line 2152
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catch_57
    move-exception v2

    .line 2153
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteProviderLocked e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 2162
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_75
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "i":I
    :goto_77
    if-ltz v3, :cond_9a

    .line 2163
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2165
    .restart local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, v6, v7}, updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2167
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2168
    invoke-virtual {p0, v4}, removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2169
    iput-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2170
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v5}, pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2171
    iput-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2162
    add-int/lit8 v3, v3, -0x1

    goto :goto_77

    .line 2173
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_9a
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2176
    invoke-direct {p0, p1}, cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2177
    :cond_a2
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 1676
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 1696
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1698
    .local v2, "token":J
    :try_start_9
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    .line 1702
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    return-void

    .line 1702
    :catchall_1d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2364
    .local p0, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2365
    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2366
    const-string v0, " package="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2356
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2358
    const-string v0, "    callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2359
    const-string v0, "    widgets.size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2360
    const-string v0, " zombie="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2361
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 5
    .param p0, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2335
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2336
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    const-string v1, "    min=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2338
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2339
    const-string v1, ")   minResize=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2340
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2341
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2342
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2343
    const-string v1, " resizeMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2344
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2345
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2346
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2348
    const-string v1, " initialLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2350
    const-string v1, " initialKeyguardLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2352
    const-string v1, " zombie="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2353
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2370
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2371
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2372
    const-string v0, "    host="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2374
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_2e

    .line 2375
    const-string v0, "    provider="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2377
    :cond_2e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_3e

    .line 2378
    const-string v0, "    host.callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2380
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 2381
    const-string v0, "    views="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2383
    :cond_4c
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v8, -0x1

    .line 497
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v6

    .line 502
    .local v6, "profileIds":[I
    const/4 v1, 0x0

    .line 503
    .local v1, "newMemberCount":I
    array-length v5, v6

    .line 504
    .local v5, "profileIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v5, :cond_1e

    .line 505
    aget v4, v6, v0

    .line 506
    .local v4, "profileId":I
    iget-object v7, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_1b

    .line 507
    aput v8, v6, v0

    .line 504
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 509
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 513
    .end local v4    # "profileId":I
    :cond_1e
    if-gtz v1, :cond_21

    .line 532
    :goto_20
    return-void

    .line 517
    :cond_21
    const/4 v2, 0x0

    .line 518
    .local v2, "newMemberIndex":I
    new-array v3, v1, [I

    .line 519
    .local v3, "newProfileIds":[I
    const/4 v0, 0x0

    :goto_25
    if-ge v0, v5, :cond_37

    .line 520
    aget v4, v6, v0

    .line 521
    .restart local v4    # "profileId":I
    if-eq v4, v8, :cond_34

    .line 522
    iget-object v7, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    aput v4, v3, v2

    .line 524
    add-int/lit8 v2, v2, 0x1

    .line 519
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 528
    .end local v4    # "profileId":I
    :cond_37
    invoke-direct {p0}, clearProvidersAndHostsTagsLocked()V

    .line 530
    invoke-direct {p0, v3}, loadGroupWidgetProvidersLocked([I)V

    .line 531
    invoke-direct {p0, v3}, loadGroupStateLocked([I)V

    goto :goto_20
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 7
    .param p1, "tag"    # I

    .prologue
    const/4 v3, 0x0

    .line 2798
    if-gez p1, :cond_5

    move-object v0, v3

    .line 2808
    :cond_4
    :goto_4
    return-object v0

    .line 2801
    :cond_5
    iget-object v4, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2802
    .local v1, "hostCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1d

    .line 2803
    iget-object v4, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2804
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-eq v4, p1, :cond_4

    .line 2802
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1d
    move-object v0, v3

    .line 2808
    goto :goto_4
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "tag"    # I

    .prologue
    const/4 v3, 0x0

    .line 2784
    if-gez p1, :cond_5

    move-object v1, v3

    .line 2794
    :cond_4
    :goto_4
    return-object v1

    .line 2787
    :cond_5
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2788
    .local v2, "providerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_1d

    .line 2789
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2790
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-eq v4, p1, :cond_4

    .line 2788
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1d
    move-object v1, v3

    .line 2794
    goto :goto_4
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3477
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_15
    .catchall {:try_start_4 .. :try_end_11} :catchall_37

    .line 3488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_14
    return-object p1

    .line 3480
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_15
    move-exception v3

    .line 3481
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_16
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3483
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_32

    array-length v4, v2

    if-lez v4, :cond_32

    .line 3484
    const/4 v4, 0x0

    aget-object p1, v2, v4
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_37

    .line 3488
    .end local p1    # "packageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    const/4 p1, 0x0

    goto :goto_14

    .line 3488
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_37
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 2581
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2582
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2584
    invoke-direct {p0, v0, p2}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2586
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2587
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2590
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .registers 5
    .param p0, "userId"    # I

    .prologue
    .line 3257
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3258
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, getStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 3259
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    if-nez p0, :cond_23

    .line 3260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19

    .line 3261
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3264
    :cond_19
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3267
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3269
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_23
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private static getStateFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 3253
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2562
    const/4 v2, 0x0

    .line 2564
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2566
    .local v0, "identity":J
    :try_start_5
    iget-object v3, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_17
    .catchall {:try_start_5 .. :try_end_b} :catchall_1c

    move-result-object v2

    .line 2570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2573
    :goto_f
    if-eqz v2, :cond_15

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_21

    .line 2574
    :cond_15
    const/4 v3, -0x1

    .line 2577
    :goto_16
    return v3

    .line 2567
    :catch_17
    move-exception v3

    .line 2570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2577
    :cond_21
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_16
.end method

.method private static getWidgetIds(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 2245
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2246
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 2247
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_16

    .line 2248
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v0, v1

    .line 2247
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2250
    :cond_16
    return-object v0
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    .registers 16
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I

    .prologue
    .line 1780
    const/4 v6, 0x0

    .line 1782
    .local v6, "skipClear":Z
    :try_start_1
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_93

    .line 1793
    :goto_4
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1794
    if-nez p2, :cond_a3

    .line 1795
    if-eqz v6, :cond_9e

    .line 1797
    :try_start_b
    const-string v8, "AppWidgetServiceImpl"

    const-string v10, "Skip callback clear."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :goto_12
    const-string v8, "AppWidgetServiceImpl"

    const-string/jumbo v10, "handleNotifyAppWidgetViewDataChanged callbacks : null"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dead host #4 : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " appWidgetId : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1805
    iget-object v8, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1806
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1807
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v8, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1808
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 1827
    .local v0, "connection":Landroid/content/ServiceConnection;
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1828
    .local v7, "userId":I
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1831
    .local v2, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v2, v0, v8}, bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    goto :goto_50

    .line 1835
    .end local v0    # "connection":Landroid/content/ServiceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    .end local v7    # "userId":I
    :catchall_90
    move-exception v8

    monitor-exit v9
    :try_end_92
    .catchall {:try_start_b .. :try_end_92} :catchall_90

    throw v8

    .line 1783
    :catch_93
    move-exception v5

    .line 1784
    .local v5, "re":Landroid/os/RemoteException;
    iget-object v8, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq v8, p2, :cond_9c

    const/4 v6, 0x1

    .line 1788
    :goto_99
    const/4 p2, 0x0

    goto/16 :goto_4

    .line 1784
    :cond_9c
    const/4 v6, 0x0

    goto :goto_99

    .line 1799
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_9e
    const/4 v8, 0x0

    :try_start_9f
    iput-object v8, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto/16 :goto_12

    .line 1835
    :cond_a3
    monitor-exit v9
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_90

    .line 1836
    return-void
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 11
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1909
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1924
    :goto_3
    return-void

    .line 1910
    :catch_4
    move-exception v0

    .line 1911
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1912
    :try_start_8
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq v2, p2, :cond_61

    const/4 v1, 0x1

    .line 1913
    .local v1, "skipClear":Z
    :goto_d
    if-eqz v1, :cond_63

    .line 1915
    const-string v2, "AppWidgetServiceImpl"

    const-string v4, "Skip callback clear."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :goto_16
    const-string v2, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead host #2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1922
    monitor-exit v3

    goto :goto_3

    .end local v1    # "skipClear":Z
    :catchall_5e
    move-exception v2

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_5e

    throw v2

    .line 1912
    :cond_61
    const/4 v1, 0x0

    goto :goto_d

    .line 1917
    .restart local v1    # "skipClear":Z
    :cond_63
    const/4 v2, 0x0

    :try_start_64
    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_5e

    goto :goto_16
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 9
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .prologue
    .line 1963
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1978
    :goto_3
    return-void

    .line 1964
    :catch_4
    move-exception v0

    .line 1965
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1966
    :try_start_8
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq v2, p2, :cond_61

    const/4 v1, 0x1

    .line 1967
    .local v1, "skipClear":Z
    :goto_d
    if-eqz v1, :cond_63

    .line 1969
    const-string v2, "AppWidgetServiceImpl"

    const-string v4, "Skip callback clear."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :goto_16
    const-string v2, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead host #3 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1976
    monitor-exit v3

    goto :goto_3

    .end local v1    # "skipClear":Z
    :catchall_5e
    move-exception v2

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_5e

    throw v2

    .line 1966
    :cond_61
    const/4 v1, 0x0

    goto :goto_d

    .line 1971
    .restart local v1    # "skipClear":Z
    :cond_63
    const/4 v2, 0x0

    :try_start_64
    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_5e

    goto :goto_16
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    .registers 15
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v5, 0x0

    .line 1858
    :try_start_1
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_4b

    .line 1874
    :goto_4
    sget-boolean v6, DEBUG_REMOTEVIEWS:Z

    if-eqz v6, :cond_4a

    .line 1875
    const/4 v3, 0x0

    .line 1876
    .local v3, "size":I
    const/4 v2, 0x0

    .line 1877
    .local v2, "sequenceNumber":I
    if-eqz p4, :cond_1e

    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p4, v0, v5}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    .line 1881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 1884
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_1e
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update widget ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RemoteViews size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    .end local v2    # "sequenceNumber":I
    .end local v3    # "size":I
    :cond_4a
    return-void

    .line 1859
    :catch_4b
    move-exception v1

    .line 1860
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1861
    :try_start_4f
    iget-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq v7, p2, :cond_b3

    const/4 v4, 0x1

    .line 1862
    .local v4, "skipClear":Z
    :goto_54
    if-eqz v4, :cond_b5

    .line 1864
    const-string v7, "AppWidgetServiceImpl"

    const-string v8, "Skip callback clear."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :goto_5d
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead host : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dead host #1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appWidgetId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1871
    monitor-exit v6

    goto/16 :goto_4

    .end local v4    # "skipClear":Z
    :catchall_b0
    move-exception v5

    monitor-exit v6
    :try_end_b2
    .catchall {:try_start_4f .. :try_end_b2} :catchall_b0

    throw v5

    :cond_b3
    move v4, v5

    .line 1861
    goto :goto_54

    .line 1866
    .restart local v4    # "skipClear":Z
    :cond_b5
    const/4 v7, 0x0

    :try_start_b6
    iput-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b0

    goto :goto_5d
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1560
    invoke-direct {p0, p1}, peekNextAppWidgetIdLocked(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1561
    .local v0, "appWidgetId":I
    iget-object v1, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1562
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1709
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    const/4 v0, 0x0

    .line 1710
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1711
    iget-object v1, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1716
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1717
    return-void

    .line 1713
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1714
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private static isLocalBinder()Z
    .registers 2

    .prologue
    .line 1981
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

.method private loadGroupStateLocked([I)V
    .registers 14
    .param p1, "profileIds"    # [I

    .prologue
    .line 2717
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2719
    .local v4, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v8, 0x0

    .line 2721
    .local v8, "version":I
    array-length v6, p1

    .line 2722
    .local v6, "profileIdCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v6, :cond_5c

    .line 2723
    aget v5, p1, v3

    .line 2726
    .local v5, "profileId":I
    invoke-static {v5}, getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 2728
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_10
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 2729
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v7, v5, v4}, readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v8

    .line 2730
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1b} :catch_1e

    .line 2722
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2731
    :catch_1e
    move-exception v1

    .line 2732
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    sget-boolean v9, DEBUG_NO_SHIP:Z

    if-eqz v9, :cond_1b

    .line 2735
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read state.u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, writeLogToFile(Ljava/lang/String;)V

    goto :goto_1b

    .line 2740
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v5    # "profileId":I
    :cond_5c
    if-ltz v8, :cond_65

    .line 2742
    invoke-direct {p0, v4}, bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 2745
    invoke-direct {p0, v8}, performUpgradeLocked(I)V

    .line 2756
    :cond_64
    return-void

    .line 2748
    :cond_65
    const-string v9, "AppWidgetServiceImpl"

    const-string v10, "Failed to read state, clearing widgets and hosts."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    invoke-virtual {p0}, clearWidgetsLocked()V

    .line 2750
    iget-object v9, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2751
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2752
    .local v0, "N":I
    const/4 v3, 0x0

    :goto_7b
    if-ge v3, v0, :cond_64

    .line 2753
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2752
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .registers 11
    .param p1, "profileIds"    # [I

    .prologue
    .line 2052
    const/4 v1, 0x0

    .line 2053
    .local v1, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2055
    .local v3, "intent":Landroid/content/Intent;
    array-length v4, p1

    .line 2056
    .local v4, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v4, :cond_27

    .line 2057
    aget v5, p1, v2

    .line 2059
    .local v5, "profileId":I
    invoke-direct {p0, v3, v5}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 2060
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_24

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_24

    .line 2061
    if-nez v1, :cond_21

    .line 2062
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2064
    .restart local v1    # "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_21
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2056
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2068
    .end local v5    # "profileId":I
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_27
    if-nez v1, :cond_39

    const/4 v0, 0x0

    .line 2069
    .local v0, "N":I
    :goto_2a
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_3e

    .line 2070
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2071
    .local v6, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v6}, addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2069
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 2068
    .end local v0    # "N":I
    .end local v6    # "receiver":Landroid/content/pm/ResolveInfo;
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2a

    .line 2073
    .restart local v0    # "N":I
    :cond_3e
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 6
    .param p1, "hostId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .prologue
    .line 2032
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2033
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 2034
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2035
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2039
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_19
    return-object v1

    .line 2033
    .restart local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2039
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 5
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .prologue
    .line 1581
    invoke-direct {p0, p1}, lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1582
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 1590
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .local v1, "host":Ljava/lang/Object;
    :goto_7
    return-object v1

    .line 1586
    .end local v1    # "host":Ljava/lang/Object;
    .restart local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_8
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1587
    .restart local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1588
    iget-object v2, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1590
    .restart local v1    # "host":Ljava/lang/Object;
    goto :goto_7
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .prologue
    .line 2021
    iget-object v3, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2022
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2023
    iget-object v3, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2024
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2028
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_19
    return-object v2

    .line 2022
    .restart local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2028
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 8
    .param p1, "appWidgetId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2009
    iget-object v3, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2010
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 2011
    iget-object v3, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2012
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_1e

    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2017
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_1d
    return-object v2

    .line 2010
    .restart local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2017
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private onConfigurationChanged()V
    .registers 15

    .prologue
    .line 357
    sget-boolean v11, DEBUG:Z

    if-eqz v11, :cond_c

    .line 358
    const-string v11, "AppWidgetServiceImpl"

    const-string/jumbo v12, "onConfigurationChanged()"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 362
    .local v10, "revised":Ljava/util/Locale;
    if-eqz v10, :cond_1e

    iget-object v11, p0, mLocale:Ljava/util/Locale;

    if-eqz v11, :cond_1e

    iget-object v11, p0, mLocale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8c

    .line 363
    :cond_1e
    iput-object v10, p0, mLocale:Ljava/util/Locale;

    .line 365
    iget-object v12, p0, mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 366
    const/4 v2, 0x0

    .line 371
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_24
    new-instance v7, Ljava/util/ArrayList;

    iget-object v11, p0, mProviders:Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    .local v7, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 374
    .local v9, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_8d

    move-result v0

    .line 375
    .local v0, "N":I
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    move-object v3, v2

    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .local v3, "changedGroups":Landroid/util/SparseIntArray;
    :goto_37
    if-ltz v6, :cond_78

    .line 376
    :try_start_39
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 378
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    invoke-direct {p0, v11}, ensureGroupStateLoadedLocked(I)V

    .line 380
    iget-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_95

    .line 381
    iget-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    invoke-direct {p0, v11, v13, v9}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    .line 385
    .local v1, "changed":Z
    if-eqz v1, :cond_95

    .line 386
    if-nez v3, :cond_93

    .line 387
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_67
    .catchall {:try_start_39 .. :try_end_67} :catchall_90

    .line 389
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    :goto_67
    :try_start_67
    iget-object v11, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v5

    .line 391
    .local v5, "groupId":I
    invoke-virtual {v2, v5, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_8d

    .line 375
    .end local v1    # "changed":Z
    .end local v5    # "groupId":I
    :goto_74
    add-int/lit8 v6, v6, -0x1

    move-object v3, v2

    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_37

    .line 396
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_78
    if-eqz v3, :cond_8b

    .line 397
    :try_start_7a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 398
    .local v4, "groupCount":I
    const/4 v6, 0x0

    :goto_7f
    if-ge v6, v4, :cond_8b

    .line 399
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 400
    .restart local v5    # "groupId":I
    invoke-direct {p0, v5}, saveGroupStateAsync(I)V

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 403
    .end local v4    # "groupCount":I
    .end local v5    # "groupId":I
    :cond_8b
    monitor-exit v12
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_90

    .line 405
    .end local v0    # "N":I
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    .end local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :cond_8c
    return-void

    .line 403
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    :catchall_8d
    move-exception v11

    :goto_8e
    :try_start_8e
    monitor-exit v12
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v11

    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v0    # "N":I
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :catchall_90
    move-exception v11

    move-object v2, v3

    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_8e

    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v1    # "changed":Z
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_93
    move-object v2, v3

    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_67

    .end local v1    # "changed":Z
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    :cond_95
    move-object v2, v3

    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_74
.end method

.method private onEmergencyDisabled(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2677
    const/4 v1, 0x0

    .line 2680
    .local v1, "componentsModified":Z
    sget-boolean v6, EMERGENCY_MODE_ENABLED:Z

    if-eqz v6, :cond_48

    .line 2681
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2682
    :try_start_8
    invoke-direct {p0, p1}, ensureGroupStateLoadedLocked(I)V

    .line 2684
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, mProviders:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2686
    .local v5, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2687
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_3f

    .line 2688
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2691
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-eq v6, p1, :cond_28

    .line 2687
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2695
    :cond_28
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2696
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_25

    .line 2698
    const/4 v6, 0x0

    invoke-direct {p0, v3, p1, v6}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v6

    or-int/2addr v1, v6

    goto :goto_25

    .line 2702
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_3f
    if-eqz v1, :cond_47

    .line 2703
    invoke-direct {p0, p1}, saveGroupStateAsync(I)V

    .line 2706
    invoke-direct {p0, p1}, scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 2708
    :cond_47
    monitor-exit v7

    .line 2710
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    :cond_48
    return-void

    .line 2708
    :catchall_49
    move-exception v6

    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v6
.end method

.method private onKNOXStarted(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2651
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2652
    :try_start_3
    invoke-direct {p0, p1}, ensureGroupStateLoadedLocked(I)V

    .line 2654
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2655
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_3b

    .line 2656
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2659
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-eq v4, p1, :cond_20

    .line 2655
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2663
    :cond_20
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 2664
    invoke-direct {p0, v3}, sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2665
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 2666
    .local v1, "appWidgetIds":[I
    invoke-direct {p0, v3, v1}, sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2667
    invoke-direct {p0, v3, v1}, registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    goto :goto_1d

    .line 2670
    .end local v0    # "N":I
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_3b
    :try_start_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 2671
    return-void
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 410
    .local v4, "added":Z
    const/4 v6, 0x0

    .line 411
    .local v6, "changed":Z
    const/4 v7, 0x0

    .line 413
    .local v7, "componentsModified":Z
    const/4 v13, 0x0

    .line 414
    .local v13, "pkgList":[Ljava/lang/String;
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 415
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 416
    const/4 v4, 0x1

    .line 433
    :goto_1d
    if-eqz v13, :cond_24

    array-length v0, v13

    move/from16 v17, v0

    if-nez v17, :cond_62

    .line 480
    :cond_24
    :goto_24
    return-void

    .line 417
    :cond_25
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3b

    .line 418
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 419
    const/4 v4, 0x0

    goto :goto_1d

    .line 421
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 422
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_24

    .line 425
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 426
    .local v14, "pkgName":Ljava/lang/String;
    if-eqz v14, :cond_24

    .line 429
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .end local v13    # "pkgList":[Ljava/lang/String;
    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 430
    .restart local v13    # "pkgList":[Ljava/lang/String;
    const-string v17, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 431
    const-string v17, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1d

    .line 437
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 438
    :try_start_69
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, ensureGroupStateLoadedLocked(I)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 442
    .local v8, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_78

    if-eqz v6, :cond_b8

    .line 443
    :cond_78
    if-eqz v4, :cond_b6

    if-eqz v8, :cond_8a

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_b6

    :cond_8a
    const/4 v11, 0x1

    .line 446
    .local v11, "newPackageAdded":Z
    :goto_8b
    move-object v5, v13

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_8e
    if-ge v9, v10, :cond_e1

    aget-object v14, v5, v9

    .line 448
    .restart local v14    # "pkgName":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v17

    or-int v7, v7, v17

    .line 452
    if-eqz v11, :cond_b3

    if-nez p2, :cond_b3

    .line 453
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, getUidForPackage(Ljava/lang/String;I)I

    move-result v15

    .line 454
    .local v15, "uid":I
    if-ltz v15, :cond_b3

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, resolveHostUidLocked(Ljava/lang/String;I)V

    .line 446
    .end local v15    # "uid":I
    :cond_b3
    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    .line 443
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "newPackageAdded":Z
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_b6
    const/4 v11, 0x0

    goto :goto_8b

    .line 462
    :cond_b8
    if-eqz v8, :cond_c8

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_df

    :cond_c8
    const/4 v12, 0x1

    .line 465
    .local v12, "packageRemovedPermanently":Z
    :goto_c9
    if-eqz v12, :cond_e1

    .line 466
    move-object v5, v13

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_ce
    if-ge v9, v10, :cond_e1

    aget-object v14, v5, v9

    .line 467
    .restart local v14    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v17

    or-int v7, v7, v17

    .line 466
    add-int/lit8 v9, v9, 0x1

    goto :goto_ce

    .line 462
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "packageRemovedPermanently":Z
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_df
    const/4 v12, 0x0

    goto :goto_c9

    .line 473
    :cond_e1
    if-eqz v7, :cond_f1

    .line 474
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, saveGroupStateAsync(I)V

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 479
    :cond_f1
    monitor-exit v18

    goto/16 :goto_24

    .end local v8    # "extras":Landroid/os/Bundle;
    :catchall_f4
    move-exception v17

    monitor-exit v18
    :try_end_f6
    .catchall {:try_start_69 .. :try_end_f6} :catchall_f4

    throw v17
.end method

.method private onUserStarted(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2622
    const/16 v4, 0x64

    if-lt p1, v4, :cond_5

    .line 2645
    :goto_4
    return-void

    .line 2625
    :cond_5
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2626
    :try_start_8
    invoke-direct {p0, p1}, ensureGroupStateLoadedLocked(I)V

    .line 2628
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2629
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_40

    .line 2630
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2633
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-eq v4, p1, :cond_25

    .line 2629
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2637
    :cond_25
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 2638
    invoke-direct {p0, v3}, sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2639
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 2640
    .local v1, "appWidgetIds":[I
    invoke-direct {p0, v3, v1}, sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2641
    invoke-direct {p0, v3, v1}, registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    goto :goto_22

    .line 2644
    .end local v0    # "N":I
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_40
    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    goto :goto_4
.end method

.method private onUserStopped(I)V
    .registers 22
    .param p1, "userId"    # I

    .prologue
    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3274
    const/4 v14, 0x0

    .line 3275
    .local v14, "providersChanged":Z
    const/4 v2, 0x0

    .line 3278
    .local v2, "crossProfileWidgetsChanged":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, mWidgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 3279
    .local v17, "widgetCount":I
    add-int/lit8 v8, v17, -0x1

    .local v8, "i":I
    :goto_15
    if-ltz v8, :cond_a1

    .line 3280
    move-object/from16 v0, p0

    iget-object v0, v0, mWidgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3282
    .local v16, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_9b

    const/4 v7, 0x1

    .line 3283
    .local v7, "hostInUser":Z
    :goto_36
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9d

    const/4 v4, 0x1

    .line 3284
    .local v4, "hasProvider":Z
    :goto_3f
    if-eqz v4, :cond_9f

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_9f

    const/4 v13, 0x1

    .line 3289
    .local v13, "providerInUser":Z
    :goto_52
    if-eqz v7, :cond_97

    if-eqz v4, :cond_58

    if-eqz v13, :cond_97

    .line 3290
    :cond_58
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3291
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3292
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3293
    if-eqz v4, :cond_97

    .line 3294
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3295
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3279
    :cond_97
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_15

    .line 3282
    .end local v4    # "hasProvider":Z
    .end local v7    # "hostInUser":Z
    .end local v13    # "providerInUser":Z
    :cond_9b
    const/4 v7, 0x0

    goto :goto_36

    .line 3283
    .restart local v7    # "hostInUser":Z
    :cond_9d
    const/4 v4, 0x0

    goto :goto_3f

    .line 3284
    .restart local v4    # "hasProvider":Z
    :cond_9f
    const/4 v13, 0x0

    goto :goto_52

    .line 3301
    .end local v4    # "hasProvider":Z
    .end local v7    # "hostInUser":Z
    .end local v16    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, mHosts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3302
    .local v6, "hostCount":I
    add-int/lit8 v8, v6, -0x1

    :goto_ad
    if-ltz v8, :cond_e0

    .line 3303
    move-object/from16 v0, p0

    iget-object v0, v0, mHosts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3304
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_da

    .line 3305
    iget-object v0, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_dd

    const/16 v18, 0x1

    :goto_d3
    or-int v2, v2, v18

    .line 3306
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3302
    :cond_da
    add-int/lit8 v8, v8, -0x1

    goto :goto_ad

    .line 3305
    :cond_dd
    const/16 v18, 0x0

    goto :goto_d3

    .line 3311
    .end local v5    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3312
    .local v12, "providerCount":I
    add-int/lit8 v8, v12, -0x1

    :goto_ec
    if-ltz v8, :cond_120

    .line 3313
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3314
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_11a

    .line 3315
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_11d

    const/16 v18, 0x1

    :goto_112
    or-int v2, v2, v18

    .line 3316
    const/4 v14, 0x1

    .line 3317
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3312
    :cond_11a
    add-int/lit8 v8, v8, -0x1

    goto :goto_ec

    .line 3315
    :cond_11d
    const/16 v18, 0x0

    goto :goto_112

    .line 3322
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3323
    .local v3, "grantCount":I
    add-int/lit8 v8, v3, -0x1

    :goto_12c
    if-ltz v8, :cond_15a

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 3325
    .local v10, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_157

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3323
    :cond_157
    add-int/lit8 v8, v8, -0x1

    goto :goto_12c

    .line 3331
    .end local v10    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, mLoadedUserIds:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v15

    .line 3332
    .local v15, "userIndex":I
    if-ltz v15, :cond_175

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, mLoadedUserIds:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3337
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    .line 3338
    .local v9, "nextIdIndex":I
    if-ltz v9, :cond_190

    .line 3339
    move-object/from16 v0, p0

    iget-object v0, v0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3343
    :cond_190
    if-eqz v14, :cond_195

    .line 3344
    invoke-direct/range {p0 .. p1}, scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3349
    :cond_195
    if-eqz v2, :cond_19a

    .line 3350
    invoke-direct/range {p0 .. p1}, saveGroupStateAsync(I)V

    .line 3352
    :cond_19a
    monitor-exit v19

    .line 3353
    return-void

    .line 3352
    .end local v3    # "grantCount":I
    .end local v6    # "hostCount":I
    .end local v8    # "i":I
    .end local v9    # "nextIdIndex":I
    .end local v12    # "providerCount":I
    .end local v15    # "userIndex":I
    .end local v17    # "widgetCount":I
    :catchall_19c
    move-exception v18

    monitor-exit v19
    :try_end_19e
    .catchall {:try_start_9 .. :try_end_19e} :catchall_19c

    throw v18
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2847
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_5

    .line 2867
    :cond_4
    :goto_4
    return-void

    .line 2849
    :cond_5
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    .line 2850
    .local v4, "userId":I
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2851
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2852
    .local v3, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 2857
    iget-object v6, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2858
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_50

    .line 2859
    iget-object v6, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2860
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_37

    .line 2858
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2861
    :cond_37
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v4, :cond_34

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    goto :goto_4

    .line 2866
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_50
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private onWidgetsClearedLocked()V
    .registers 2

    .prologue
    .line 2879
    iget-object v0, p0, mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2880
    return-void
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 23
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2451
    const/4 v11, 0x0

    .line 2453
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2454
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 2456
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "android.appwidget.provider"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 2458
    if-nez v10, :cond_45

    .line 2459
    const-string v17, "AppWidgetServiceImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x27

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3e} :catch_27e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_3e} :catch_283
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_3e} :catch_277
    .catchall {:try_start_6 .. :try_end_3e} :catchall_270

    .line 2461
    const/4 v12, 0x0

    .line 2554
    if-eqz v10, :cond_44

    .line 2555
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2558
    :cond_44
    :goto_44
    return-object v12

    .line 2464
    :cond_45
    :try_start_45
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 2468
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_49
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_59

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_49

    .line 2472
    :cond_59
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2473
    .local v9, "nodeName":Ljava/lang/String;
    const-string v17, "appwidget-provider"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9c

    .line 2474
    const-string v17, "AppWidgetServiceImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_95} :catch_27e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_95} :catch_283
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_95} :catch_277
    .catchall {:try_start_45 .. :try_end_95} :catchall_270

    .line 2477
    const/4 v12, 0x0

    .line 2554
    if-eqz v10, :cond_44

    .line 2555
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_44

    .line 2480
    :cond_9c
    :try_start_9c
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a5} :catch_27e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_a5} :catch_283
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_a5} :catch_277
    .catchall {:try_start_9c .. :try_end_a5} :catchall_270

    .line 2481
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v12, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_start_a5
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2482
    new-instance v8, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v8}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v8, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2483
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2484
    iput-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 2487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_bf} :catch_20a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a5 .. :try_end_bf} :catch_26b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_bf} :catch_280
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_27b

    move-result-wide v6

    .line 2489
    .local v6, "identity":J
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_db
    .catchall {:try_start_c0 .. :try_end_db} :catchall_205

    move-result-object v13

    .line 2493
    .local v13, "resources":Landroid/content/res/Resources;
    :try_start_dc
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    sget-object v17, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 2502
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 2504
    .local v16, "value":Landroid/util/TypedValue;
    if-eqz v16, :cond_248

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    :goto_f7
    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2505
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 2506
    if-eqz v16, :cond_24c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    :goto_10b
    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2507
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 2509
    if-eqz v16, :cond_250

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    :goto_11f
    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2510
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 2512
    if-eqz v16, :cond_256

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    :goto_133
    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2513
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 2515
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 2517
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 2520
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2522
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_188

    .line 2523
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 2526
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2527
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 2528
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 2530
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 2532
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 2535
    const/16 v17, 0xb

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 2538
    sget-boolean v17, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v17, :cond_1fa

    .line 2539
    iget v0, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move/from16 v17, v0

    if-eqz v17, :cond_25c

    .line 2540
    iget v0, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    .line 2545
    :cond_1fa
    :goto_1fa
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_1fd} :catch_20a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dc .. :try_end_1fd} :catch_26b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_dc .. :try_end_1fd} :catch_280
    .catchall {:try_start_dc .. :try_end_1fd} :catchall_27b

    .line 2554
    if-eqz v10, :cond_202

    .line 2555
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_202
    move-object v11, v12

    .line 2558
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto/16 :goto_44

    .line 2493
    .end local v4    # "className":Ljava/lang/String;
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "value":Landroid/util/TypedValue;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_205
    move-exception v17

    :try_start_206
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_20a} :catch_20a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_206 .. :try_end_20a} :catch_26b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_206 .. :try_end_20a} :catch_280
    .catchall {:try_start_206 .. :try_end_20a} :catchall_27b

    .line 2546
    .end local v6    # "identity":J
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_20a
    move-exception v17

    move-object v11, v12

    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v15    # "type":I
    .restart local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_20c
    move-object/from16 v5, v17

    .line 2550
    .local v5, "e":Ljava/lang/Exception;
    :goto_20e
    :try_start_20e
    const-string v17, "AppWidgetServiceImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML parsing failed for AppWidget provider "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_240
    .catchall {:try_start_20e .. :try_end_240} :catchall_270

    .line 2552
    const/4 v12, 0x0

    .line 2554
    if-eqz v10, :cond_44

    .line 2555
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_44

    .line 2504
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "identity":J
    .restart local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v13    # "resources":Landroid/content/res/Resources;
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "type":I
    .restart local v16    # "value":Landroid/util/TypedValue;
    :cond_248
    const/16 v17, 0x0

    goto/16 :goto_f7

    .line 2506
    :cond_24c
    const/16 v17, 0x0

    goto/16 :goto_10b

    .line 2509
    :cond_250
    :try_start_250
    iget v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v17, v0

    goto/16 :goto_11f

    .line 2512
    :cond_256
    iget v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v17, v0

    goto/16 :goto_133

    .line 2542
    .restart local v4    # "className":Ljava/lang/String;
    :cond_25c
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_26a} :catch_20a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_250 .. :try_end_26a} :catch_26b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_250 .. :try_end_26a} :catch_280
    .catchall {:try_start_250 .. :try_end_26a} :catchall_27b

    goto :goto_1fa

    .line 2546
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "identity":J
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "value":Landroid/util/TypedValue;
    :catch_26b
    move-exception v17

    move-object v11, v12

    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v15    # "type":I
    .restart local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_26d
    move-object/from16 v5, v17

    goto :goto_20e

    .line 2554
    :catchall_270
    move-exception v17

    :goto_271
    if-eqz v10, :cond_276

    .line 2555
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_276
    throw v17

    .line 2546
    :catch_277
    move-exception v17

    :goto_278
    move-object/from16 v5, v17

    goto :goto_20e

    .line 2554
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v15    # "type":I
    :catchall_27b
    move-exception v17

    move-object v11, v12

    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto :goto_271

    .line 2546
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_27e
    move-exception v17

    goto :goto_20c

    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v15    # "type":I
    :catch_280
    move-exception v17

    move-object v11, v12

    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto :goto_278

    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_283
    move-exception v17

    goto :goto_26d
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1573
    iget-object v0, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 1574
    const/4 v0, 0x1

    .line 1576
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_9
.end method

.method private performUpgradeLocked(I)V
    .registers 11
    .param p1, "fromVersion"    # I

    .prologue
    const v8, 0x4b455947    # 1.2933447E7f

    const/4 v7, 0x1

    .line 3223
    if-ge p1, v7, :cond_28

    .line 3224
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading widget database from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_28
    move v3, p1

    .line 3231
    .local v3, "version":I
    if-nez v3, :cond_4f

    .line 3232
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android"

    invoke-direct {v1, v4, v8, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3235
    .local v1, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 3236
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_4e

    .line 3237
    const-string v4, "com.android.keyguard"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, getUidForPackage(Ljava/lang/String;I)I

    move-result v2

    .line 3239
    .local v2, "uid":I
    if-ltz v2, :cond_4e

    .line 3240
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    const-string v5, "com.android.keyguard"

    invoke-direct {v4, v2, v8, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3244
    .end local v2    # "uid":I
    :cond_4e
    const/4 v3, 0x1

    .line 3247
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_4f
    if-eq v3, v7, :cond_59

    .line 3248
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to upgrade widget database"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3250
    :cond_59
    return-void
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .prologue
    .line 2043
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_2f

    .line 2044
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_2a

    .line 2045
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pruning host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_2a
    iget-object v0, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2049
    :cond_2f
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 10
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
    .line 2594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2596
    .local v2, "identity":J
    const/16 v0, 0x80

    .line 2600
    .local v0, "flags":I
    or-int/lit16 v0, v0, 0x400

    .line 2602
    :try_start_8
    sget-boolean v4, EMERGENCY_MODE_ENABLED:Z

    if-eqz v4, :cond_2a

    .line 2603
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2604
    iget-object v4, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x280

    invoke-interface {v4, p1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_25} :catch_3e
    .catchall {:try_start_8 .. :try_end_25} :catchall_47

    move-result-object v4

    .line 2615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_29
    return-object v4

    .line 2609
    :cond_2a
    :try_start_2a
    iget-object v4, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, v0, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_39} :catch_3e
    .catchall {:try_start_2a .. :try_end_39} :catchall_47

    move-result-object v4

    .line 2615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .line 2612
    :catch_3e
    move-exception v1

    .line 2613
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    move-result-object v4

    .line 2615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_47
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .registers 44
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3022
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/16 v35, -0x1

    .line 3024
    .local v35, "version":I
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 3025
    .local v21, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v37, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v37 .. v37}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3027
    const/4 v12, -0x1

    .line 3028
    .local v12, "legacyProviderIndex":I
    const/4 v11, -0x1

    .line 3031
    .local v11, "legacyHostIndex":I
    :cond_17
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v33

    .line 3032
    .local v33, "type":I
    const/16 v37, 0x2

    move/from16 v0, v33

    move/from16 v1, v37

    if-ne v0, v1, :cond_47

    .line 3033
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 3034
    .local v31, "tag":Ljava/lang/String;
    const-string/jumbo v37, "gs"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_56

    .line 3035
    const/16 v37, 0x0

    const-string/jumbo v38, "version"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_42} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_42} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_42} :catch_305
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_42} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_42} :catch_356

    move-result-object v3

    .line 3037
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_43
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_46} :catch_16e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_46} :catch_305
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_43 .. :try_end_46} :catch_356

    move-result v35

    .line 3209
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v31    # "tag":Ljava/lang/String;
    :cond_47
    :goto_47
    const/16 v37, 0x1

    move/from16 v0, v33

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move/from16 v37, v35

    .line 3219
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :goto_51
    return v37

    .line 3038
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v33    # "type":I
    :catch_52
    move-exception v7

    .line 3039
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/16 v35, 0x0

    goto :goto_47

    .line 3041
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_56
    :try_start_56
    const-string/jumbo v37, "p"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_248

    .line 3042
    add-int/lit8 v12, v12, 0x1

    .line 3045
    const/16 v37, 0x0

    const-string/jumbo v38, "pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3046
    .local v22, "pkg":Ljava/lang/String;
    const/16 v37, 0x0

    const-string v38, "cl"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3049
    .local v5, "cl":Ljava/lang/String;
    sget-boolean v37, IS_TABLET:Z

    if-eqz v37, :cond_b0

    .line 3050
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, renameClassForWeatherWidget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3051
    .local v29, "renamedClass":Ljava/lang/String;
    if-eqz v29, :cond_b0

    .line 3052
    move-object/from16 v5, v29

    .line 3053
    const-string v22, "com.sec.android.daemonapp"

    .line 3055
    const-string v37, "AppWidgetServiceImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Found old weather widget, renamed to "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    .end local v29    # "renamedClass":Ljava/lang/String;
    :cond_b0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 3060
    if-eqz v22, :cond_47

    .line 3064
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v34

    .line 3065
    .local v34, "uid":I
    if-ltz v34, :cond_47

    .line 3069
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    .local v6, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1}, getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v26

    .line 3072
    .local v26, "providerInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v26, :cond_47

    .line 3076
    new-instance v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/16 v37, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3077
    .local v25, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v23

    .line 3079
    .local v23, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v23, :cond_18e

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSafeMode:Z

    move/from16 v37, v0

    if-eqz v37, :cond_18e

    .line 3081
    new-instance v23, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .end local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/16 v37, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3082
    .restart local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v37, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v37 .. v37}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3083
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3084
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3085
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3086
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    :cond_147
    :goto_147
    const/16 v37, 0x0

    const-string/jumbo v38, "tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3111
    .local v32, "tagAttribute":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_244

    const/16 v37, 0x10

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 3113
    .local v28, "providerTag":I
    :goto_166
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I
    :try_end_16c
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_16c} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_16c} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_16c} :catch_305
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_16c} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_16c} :catch_356

    goto/16 :goto_47

    .line 3210
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "providerTag":I
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "tagAttribute":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v34    # "uid":I
    :catch_16e
    move-exception v7

    .line 3215
    .local v7, "e":Ljava/lang/Exception;
    :goto_16f
    const-string v37, "AppWidgetServiceImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "failed parsing "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const/16 v37, -0x1

    goto/16 :goto_51

    .line 3090
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cl":Ljava/lang/String;
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "pkg":Ljava/lang/String;
    .restart local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v33    # "type":I
    .restart local v34    # "uid":I
    :cond_18e
    :try_start_18e
    sget-boolean v37, EMERGENCY_MODE_ENABLED:Z

    if-eqz v37, :cond_147

    .line 3091
    if-nez v23, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z
    :try_end_19d
    .catch Ljava/lang/NullPointerException; {:try_start_18e .. :try_end_19d} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_19d} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18e .. :try_end_19d} :catch_305
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_19d} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18e .. :try_end_19d} :catch_356

    move-result v37

    if-eqz v37, :cond_147

    .line 3094
    :try_start_1a0
    new-instance v24, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    const/16 v37, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1ab} :catch_220
    .catch Ljava/lang/NullPointerException; {:try_start_1a0 .. :try_end_1ab} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a0 .. :try_end_1ab} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a0 .. :try_end_1ab} :catch_305
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1ab} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a0 .. :try_end_1ab} :catch_356

    .line 3095
    .end local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v24, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_start_1ab
    new-instance v37, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v37 .. v37}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3096
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3097
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3098
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3099
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3100
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3101
    const-string v37, "AppWidgetServiceImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "readProfileStateFromFileLocked "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_21c} :catch_4d1
    .catch Ljava/lang/NullPointerException; {:try_start_1ab .. :try_end_21c} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_1ab .. :try_end_21c} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ab .. :try_end_21c} :catch_305
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_21c} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1ab .. :try_end_21c} :catch_356

    move-object/from16 v23, v24

    .line 3105
    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto/16 :goto_147

    .line 3102
    :catch_220
    move-exception v7

    .line 3103
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_221
    :try_start_221
    const-string v37, "AppWidgetServiceImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "readProfileStateFromFileLocked e : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_147

    .line 3210
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v31    # "tag":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v34    # "uid":I
    :catch_241
    move-exception v7

    goto/16 :goto_16f

    .restart local v5    # "cl":Ljava/lang/String;
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "pkg":Ljava/lang/String;
    .restart local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "tagAttribute":Ljava/lang/String;
    .restart local v33    # "type":I
    .restart local v34    # "uid":I
    :cond_244
    move/from16 v28, v12

    .line 3111
    goto/16 :goto_166

    .line 3114
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "tagAttribute":Ljava/lang/String;
    .end local v34    # "uid":I
    :cond_248
    const-string/jumbo v37, "h"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_314

    .line 3115
    add-int/lit8 v11, v11, 0x1

    .line 3116
    new-instance v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/16 v37, 0x0

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3119
    .local v8, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/16 v37, 0x0

    const-string/jumbo v38, "pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3121
    .restart local v22    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v34

    .line 3122
    .restart local v34    # "uid":I
    if-gez v34, :cond_2a5

    .line 3124
    sget-boolean v37, EMERGENCY_MODE_ENABLED:Z

    if-eqz v37, :cond_308

    .line 3125
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v37

    if-nez v37, :cond_2a5

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v37

    if-nez v37, :cond_2a5

    .line 3127
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 3135
    :cond_2a5
    :goto_2a5
    iget-boolean v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2b3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSafeMode:Z

    move/from16 v37, v0

    if-eqz v37, :cond_47

    .line 3138
    :cond_2b3
    const/16 v37, 0x0

    const-string/jumbo v38, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 3141
    .local v9, "hostId":I
    const/16 v37, 0x0

    const-string/jumbo v38, "tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3142
    .restart local v32    # "tagAttribute":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_312

    const/16 v37, 0x10

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 3145
    .local v10, "hostTag":I
    :goto_2e7
    iput v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3146
    new-instance v37, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    move-object/from16 v0, v37

    move/from16 v1, v34

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v37

    iput-object v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3147
    move-object/from16 v0, p0

    iget-object v0, v0, mHosts:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 3210
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "hostId":I
    .end local v10    # "hostTag":I
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "tagAttribute":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v34    # "uid":I
    :catch_305
    move-exception v7

    goto/16 :goto_16f

    .line 3130
    .restart local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "pkg":Ljava/lang/String;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v33    # "type":I
    .restart local v34    # "uid":I
    :cond_308
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    goto :goto_2a5

    .line 3210
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v31    # "tag":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v34    # "uid":I
    :catch_30f
    move-exception v7

    goto/16 :goto_16f

    .restart local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .restart local v9    # "hostId":I
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "pkg":Ljava/lang/String;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "tagAttribute":Ljava/lang/String;
    .restart local v33    # "type":I
    .restart local v34    # "uid":I
    :cond_312
    move v10, v11

    .line 3142
    goto :goto_2e7

    .line 3149
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "hostId":I
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v32    # "tagAttribute":Ljava/lang/String;
    .end local v34    # "uid":I
    :cond_314
    const-string v37, "b"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_359

    .line 3150
    const/16 v37, 0x0

    const-string/jumbo v38, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3151
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v34

    .line 3152
    .restart local v34    # "uid":I
    if-ltz v34, :cond_47

    .line 3153
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    .line 3154
    .local v19, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 3210
    .end local v11    # "legacyHostIndex":I
    .end local v12    # "legacyProviderIndex":I
    .end local v19    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "tag":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v34    # "uid":I
    :catch_356
    move-exception v7

    goto/16 :goto_16f

    .line 3156
    .restart local v11    # "legacyHostIndex":I
    .restart local v12    # "legacyProviderIndex":I
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v33    # "type":I
    :cond_359
    const-string/jumbo v37, "g"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_47

    .line 3157
    new-instance v36, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/16 v37, 0x0

    invoke-direct/range {v36 .. v37}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3158
    .local v36, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v37, 0x0

    const-string/jumbo v38, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3160
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, setMinAppWidgetIdLocked(II)V

    .line 3163
    const/16 v37, 0x0

    const-string/jumbo v38, "rid"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3164
    .local v30, "restoredIdString":Ljava/lang/String;
    if-nez v30, :cond_4c2

    const/16 v37, 0x0

    :goto_3ac
    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3167
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 3168
    .local v18, "options":Landroid/os/Bundle;
    const/16 v37, 0x0

    const-string/jumbo v38, "min_width"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3169
    .local v17, "minWidthString":Ljava/lang/String;
    if-eqz v17, :cond_3dd

    .line 3170
    const-string v37, "appWidgetMinWidth"

    const/16 v38, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3173
    :cond_3dd
    const/16 v37, 0x0

    const-string/jumbo v38, "min_height"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3174
    .local v16, "minHeightString":Ljava/lang/String;
    if-eqz v16, :cond_403

    .line 3175
    const-string v37, "appWidgetMinHeight"

    const/16 v38, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3178
    :cond_403
    const/16 v37, 0x0

    const-string/jumbo v38, "max_width"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3179
    .local v15, "maxWidthString":Ljava/lang/String;
    if-eqz v15, :cond_427

    .line 3180
    const-string v37, "appWidgetMaxWidth"

    const/16 v38, 0x10

    move/from16 v0, v38

    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3183
    :cond_427
    const/16 v37, 0x0

    const-string/jumbo v38, "max_height"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3184
    .local v14, "maxHeightString":Ljava/lang/String;
    if-eqz v14, :cond_44b

    .line 3185
    const-string v37, "appWidgetMaxHeight"

    const/16 v38, 0x10

    move/from16 v0, v38

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3188
    :cond_44b
    const/16 v37, 0x0

    const-string/jumbo v38, "host_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3189
    .local v4, "categoryString":Ljava/lang/String;
    if-eqz v4, :cond_46f

    .line 3190
    const-string v37, "appWidgetCategory"

    const/16 v38, 0x10

    move/from16 v0, v38

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3193
    :cond_46f
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3195
    const/16 v37, 0x0

    const-string/jumbo v38, "h"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 3197
    .restart local v10    # "hostTag":I
    const/16 v37, 0x0

    const-string/jumbo v38, "p"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3198
    .local v27, "providerString":Ljava/lang/String;
    if-eqz v27, :cond_4ce

    const/16 v37, 0x0

    const-string/jumbo v38, "p"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 3204
    .restart local v28    # "providerTag":I
    :goto_4b0
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v28

    invoke-direct {v13, v0, v1, v10, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V

    .line 3206
    .local v13, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 3164
    .end local v4    # "categoryString":Ljava/lang/String;
    .end local v10    # "hostTag":I
    .end local v13    # "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v14    # "maxHeightString":Ljava/lang/String;
    .end local v15    # "maxWidthString":Ljava/lang/String;
    .end local v16    # "minHeightString":Ljava/lang/String;
    .end local v17    # "minWidthString":Ljava/lang/String;
    .end local v18    # "options":Landroid/os/Bundle;
    .end local v27    # "providerString":Ljava/lang/String;
    .end local v28    # "providerTag":I
    :cond_4c2
    const/16 v37, 0x10

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4cb
    .catch Ljava/lang/NullPointerException; {:try_start_221 .. :try_end_4cb} :catch_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_221 .. :try_end_4cb} :catch_241
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_221 .. :try_end_4cb} :catch_305
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_4cb} :catch_30f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_221 .. :try_end_4cb} :catch_356

    move-result v37

    goto/16 :goto_3ac

    .line 3198
    .restart local v4    # "categoryString":Ljava/lang/String;
    .restart local v10    # "hostTag":I
    .restart local v14    # "maxHeightString":Ljava/lang/String;
    .restart local v15    # "maxWidthString":Ljava/lang/String;
    .restart local v16    # "minHeightString":Ljava/lang/String;
    .restart local v17    # "minWidthString":Ljava/lang/String;
    .restart local v18    # "options":Landroid/os/Bundle;
    .restart local v27    # "providerString":Ljava/lang/String;
    :cond_4ce
    const/16 v28, -0x1

    goto :goto_4b0

    .line 3102
    .end local v4    # "categoryString":Ljava/lang/String;
    .end local v10    # "hostTag":I
    .end local v14    # "maxHeightString":Ljava/lang/String;
    .end local v15    # "maxWidthString":Ljava/lang/String;
    .end local v16    # "minHeightString":Ljava/lang/String;
    .end local v17    # "minWidthString":Ljava/lang/String;
    .end local v18    # "options":Landroid/os/Bundle;
    .end local v27    # "providerString":Ljava/lang/String;
    .end local v30    # "restoredIdString":Ljava/lang/String;
    .end local v36    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v5    # "cl":Ljava/lang/String;
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v22    # "pkg":Ljava/lang/String;
    .restart local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .restart local v34    # "uid":I
    :catch_4d1
    move-exception v7

    move-object/from16 v23, v24

    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v23    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto/16 :goto_221
.end method

.method private registerBroadcastReceiver()V
    .registers 28

    .prologue
    .line 299
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 321
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v16, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 328
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .local v20, "knoxFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.FIRST_SWITCH"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 334
    sget-boolean v1, EMERGENCY_MODE_ENABLED:Z

    if-eqz v1, :cond_ca

    .line 335
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v24, "emFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    .end local v24    # "emFilter":Landroid/content/IntentFilter;
    :cond_ca
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 15
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    const/4 v7, 0x1

    .line 2218
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_54

    .line 2222
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_55

    .line 2223
    .local v7, "alreadyRegistered":Z
    :goto_b
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2225
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2228
    .local v10, "token":J
    :try_start_22
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v0, v1, v8, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_57

    .line 2231
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2233
    if-nez v7, :cond_54

    .line 2234
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 2235
    .local v4, "period":J
    sget v0, MIN_UPDATE_PERIOD:I

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_47

    .line 2236
    sget v0, MIN_UPDATE_PERIOD:I

    int-to-long v4, v0

    .line 2238
    :cond_47
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2242
    .end local v4    # "period":J
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "token":J
    :cond_54
    return-void

    .line 2222
    :cond_55
    const/4 v7, 0x0

    goto :goto_b

    .line 2231
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "token":J
    :catchall_57
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .registers 3

    .prologue
    .line 344
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 347
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 348
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 350
    :cond_d
    return-void
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3455
    invoke-direct {p0, p1, p2}, removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v3

    .line 3460
    .local v3, "removed":Z
    iget-object v4, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3461
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_2d

    .line 3462
    iget-object v4, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3463
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 3465
    invoke-direct {p0, v1}, deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3466
    const/4 v3, 0x1

    .line 3461
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 3470
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2d
    return v3
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3440
    const/4 v3, 0x0

    .line 3442
    .local v3, "removed":Z
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3443
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2e

    .line 3444
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3445
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2b

    .line 3447
    invoke-direct {p0, v2}, deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3448
    const/4 v3, 0x1

    .line 3443
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3451
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2e
    return v3
.end method

.method private renameClassForWeatherWidget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    .line 4701
    const/4 v2, 0x0

    .line 4703
    .local v2, "newCls":Ljava/lang/String;
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v3, v2

    .line 4717
    .end local v2    # "newCls":Ljava/lang/String;
    .local v3, "newCls":Ljava/lang/String;
    :goto_6
    return-object v3

    .line 4707
    .end local v3    # "newCls":Ljava/lang/String;
    .restart local v2    # "newCls":Ljava/lang/String;
    :cond_7
    sget-object v4, OLD_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    array-length v0, v4

    .line 4708
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_28

    .line 4709
    sget-object v4, OLD_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "com.sec.android.widgetapp.at.hero"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 4710
    sget-object v4, NEW_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_28

    .line 4711
    sget-object v4, NEW_WEATHER_WIDGET_CLASSES:[Ljava/lang/String;

    aget-object v2, v4, v1

    :cond_28
    move-object v3, v2

    .line 4717
    .end local v2    # "newCls":Ljava/lang/String;
    .restart local v3    # "newCls":Ljava/lang/String;
    goto :goto_6

    .line 4708
    .end local v3    # "newCls":Ljava/lang/String;
    .restart local v2    # "newCls":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 483
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 484
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_5a

    .line 485
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 486
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5b

    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 487
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_4b

    .line 488
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolved to uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_4b
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 494
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_5a
    return-void

    .line 484
    .restart local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private saveGroupStateAsync(I)V
    .registers 4
    .param p1, "groupId"    # I

    .prologue
    .line 1739
    iget-object v0, p0, mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1740
    return-void
.end method

.method private saveStateLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 2905
    invoke-direct {p0}, tagProvidersAndHosts()V

    .line 2907
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v5

    .line 2909
    .local v5, "profileIds":[I
    array-length v3, v5

    .line 2910
    .local v3, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v3, :cond_48

    .line 2911
    aget v4, v5, v2

    .line 2913
    .local v4, "profileId":I
    invoke-static {v4}, getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 2916
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 2917
    .local v6, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v6, v4}, writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2918
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2910
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2920
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_23
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2921
    const-string v7, "AppWidgetServiceImpl"

    const-string v8, "Failed to save state, restoring backup."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2d} :catch_2e

    goto :goto_20

    .line 2923
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2e
    move-exception v0

    .line 2924
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed open state file for write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2927
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v4    # "profileId":I
    :cond_48
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .registers 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"    # I

    .prologue
    .line 1760
    if-eqz p1, :cond_1c

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v1, :cond_1d

    .line 1775
    :cond_1c
    :goto_1c
    return-void

    .line 1766
    :cond_1d
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1767
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1768
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1769
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1770
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1772
    iget-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .registers 13
    .param p1, "userId"    # I

    .prologue
    .line 1927
    iget-object v9, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v8

    .line 1929
    .local v8, "profileIds":[I
    iget-object v9, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1930
    .local v1, "N":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_e
    if-ltz v5, :cond_4d

    .line 1931
    iget-object v9, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1933
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    .line 1934
    .local v4, "hostInGroup":Z
    array-length v0, v8

    .line 1935
    .local v0, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v0, :cond_26

    .line 1936
    aget v7, v8, v6

    .line 1937
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v9

    if-ne v9, v7, :cond_2b

    .line 1938
    const/4 v4, 0x1

    .line 1943
    .end local v7    # "profileId":I
    :cond_26
    if-nez v4, :cond_2e

    .line 1930
    :cond_28
    :goto_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    .line 1935
    .restart local v7    # "profileId":I
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1947
    .end local v7    # "profileId":I
    :cond_2e
    if-eqz v3, :cond_28

    iget-boolean v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v9, :cond_28

    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v9, :cond_28

    .line 1951
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1952
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1953
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1955
    iget-object v9, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 1959
    .end local v0    # "M":I
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "hostInGroup":Z
    .end local v6    # "j":I
    :cond_4d
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 1890
    if-eqz p1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v1, :cond_19

    .line 1904
    :cond_18
    :goto_18
    return-void

    .line 1895
    :cond_19
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1896
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1897
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1898
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1899
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1901
    iget-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1839
    if-eqz p1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v1, :cond_19

    .line 1853
    :cond_18
    :goto_18
    return-void

    .line 1844
    :cond_19
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1845
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1846
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1847
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1848
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1850
    iget-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 3494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3496
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 3498
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3500
    return-void

    .line 3498
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2198
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2199
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2200
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .prologue
    .line 2203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2205
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2206
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .prologue
    .line 2180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2181
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2182
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2183
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2184
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 2187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2188
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2189
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2190
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2191
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2192
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2193
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2402
    const-string/jumbo v0, "g"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2403
    const-string/jumbo v0, "id"

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2404
    const-string/jumbo v0, "rid"

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2405
    const-string/jumbo v0, "h"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2406
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_3f

    .line 2407
    const-string/jumbo v0, "p"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    :cond_3f
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v0, :cond_9d

    .line 2410
    const-string/jumbo v0, "min_width"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2412
    const-string/jumbo v0, "min_height"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2414
    const-string/jumbo v0, "max_width"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMaxWidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    const-string/jumbo v0, "max_height"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMaxHeight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2418
    const-string/jumbo v0, "host_category"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetCategory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2421
    :cond_9d
    const-string/jumbo v0, "g"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2422
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2394
    const-string/jumbo v0, "h"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2395
    const-string/jumbo v0, "pkg"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2396
    const-string/jumbo v0, "id"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2397
    const-string/jumbo v0, "tag"

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2398
    const-string/jumbo v0, "h"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2399
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2386
    const-string/jumbo v0, "p"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2387
    const-string/jumbo v0, "pkg"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    const-string v0, "cl"

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2389
    const-string/jumbo v0, "tag"

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2390
    const-string/jumbo v0, "p"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "minWidgetId"    # I

    .prologue
    .line 1566
    invoke-direct {p0, p1}, peekNextAppWidgetIdLocked(I)I

    move-result v0

    .line 1567
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_b

    .line 1568
    iget-object v1, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1570
    :cond_b
    return-void
.end method

.method private tagProvidersAndHosts()V
    .registers 7

    .prologue
    .line 2930
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2931
    .local v4, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v4, :cond_16

    .line 2932
    iget-object v5, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2933
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2931
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2936
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_16
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2937
    .local v1, "hostCount":I
    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2c

    .line 2938
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2939
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2937
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2941
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2c
    return-void
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 4722
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4723
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 7
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 1654
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 1656
    .local v0, "appWidgetId":I
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1658
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1659
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1660
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_c

    .line 1661
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 1663
    .local v1, "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1664
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1665
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 1671
    .end local v1    # "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_36
    invoke-direct {p0, p1}, decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1672
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 3515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3517
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 3519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3521
    return-void

    .line 3519
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .registers 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "partially"    # Z

    .prologue
    .line 1524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1526
    .local v4, "userId":I
    if-eqz p2, :cond_9

    array-length v6, p2

    if-nez v6, :cond_a

    .line 1557
    :cond_9
    :goto_9
    return-void

    .line 1531
    :cond_a
    iget-object v6, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1533
    if-eqz p3, :cond_44

    invoke-virtual {p3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v2

    .line 1534
    .local v2, "bitmapMemoryUsage":I
    :goto_15
    iget v6, p0, mMaxWidgetBitmapMemory:I

    if-le v2, v6, :cond_46

    .line 1535
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mMaxWidgetBitmapMemory:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1533
    .end local v2    # "bitmapMemoryUsage":I
    :cond_44
    const/4 v2, 0x0

    goto :goto_15

    .line 1540
    .restart local v2    # "bitmapMemoryUsage":I
    :cond_46
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1541
    :try_start_49
    invoke-direct {p0, v4}, ensureGroupStateLoadedLocked(I)V

    .line 1543
    array-length v0, p2

    .line 1544
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    if-ge v3, v0, :cond_62

    .line 1545
    aget v1, p2, v3

    .line 1549
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v1, v6, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1552
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_5f

    .line 1553
    invoke-direct {p0, v5, p3, p4}, updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1544
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 1556
    .end local v1    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_62
    monitor-exit v7

    goto :goto_9

    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_64
    move-exception v6

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_64

    throw v6
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .prologue
    .line 1744
    if-eqz p1, :cond_20

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_20

    .line 1747
    if-eqz p3, :cond_21

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_21

    .line 1749
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    .line 1755
    :goto_1d
    invoke-direct {p0, p1, p2}, scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 1757
    :cond_20
    return-void

    .line 1752
    :cond_21
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    goto :goto_1d
.end method

.method private updateHostHistoryLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 4730
    invoke-direct {p0, p1}, toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4733
    .local v0, "history":Ljava/lang/String;
    iget-object v2, p0, mHostHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 4734
    .local v1, "historySize":I
    iget v2, p0, mHostHistoryIdx:I

    if-ltz v2, :cond_19

    iget v2, p0, mHostHistoryIdx:I

    if-ge v2, v1, :cond_19

    .line 4735
    iget-object v2, p0, mHostHistory:[Ljava/lang/String;

    iget v3, p0, mHostHistoryIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, mHostHistoryIdx:I

    aput-object v0, v2, v3

    .line 4738
    :cond_19
    iget v2, p0, mHostHistoryIdx:I

    if-lt v2, v1, :cond_20

    .line 4739
    const/4 v2, 0x0

    iput v2, p0, mHostHistoryIdx:I

    .line 4741
    :cond_20
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3363
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    const/4 v15, 0x0

    .line 3365
    .local v15, "providersUpdated":Z
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 3366
    .local v11, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3367
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3368
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 3371
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_3f

    const/4 v4, 0x0

    .line 3372
    .local v4, "N":I
    :goto_1f
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_20
    if-ge v8, v4, :cond_e7

    .line 3373
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 3374
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3376
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x40000

    and-int v18, v18, v19

    if-eqz v18, :cond_44

    .line 3372
    :cond_3c
    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 3371
    .end local v4    # "N":I
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "i":I
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1f

    .line 3380
    .restart local v4    # "N":I
    .restart local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "i":I
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_44
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 3381
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    new-instance v19, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3384
    .local v14, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v13

    .line 3385
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_8d

    .line 3386
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 3387
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3388
    const/4 v15, 0x1

    goto :goto_3c

    .line 3391
    :cond_8d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v12

    .line 3392
    .local v12, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v12, :cond_e4

    .line 3393
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3395
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3397
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3398
    .local v3, "M":I
    if-lez v3, :cond_e4

    .line 3399
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v6

    .line 3403
    .local v6, "appWidgetIds":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3404
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3407
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_bf
    if-ge v10, v3, :cond_df

    .line 3408
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3409
    .local v17, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 3410
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3407
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 3413
    .end local v17    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_df
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3416
    .end local v3    # "M":I
    .end local v6    # "appWidgetIds":[I
    .end local v10    # "j":I
    :cond_e4
    const/4 v15, 0x1

    goto/16 :goto_3c

    .line 3422
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v12    # "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3423
    add-int/lit8 v8, v4, -0x1

    :goto_f3
    if-ltz v8, :cond_147

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3425
    .restart local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_144

    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_144

    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_144

    .line 3428
    if-eqz p3, :cond_13e

    .line 3429
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3431
    :cond_13e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3432
    const/4 v15, 0x1

    .line 3423
    :cond_144
    add-int/lit8 v8, v8, -0x1

    goto :goto_f3

    .line 3436
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_147
    return v15
.end method

.method private writeLogToFile(Ljava/lang/String;)V
    .registers 12
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 4744
    invoke-direct {p0, p1}, toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4747
    .local v3, "history":Ljava/lang/String;
    :try_start_4
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_12

    .line 4768
    :goto_11
    return-void

    .line 4751
    :cond_12
    const/4 v0, 0x1

    .line 4752
    .local v0, "append":Z
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/log/appwidget.log"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4753
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_54

    .line 4754
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 4759
    :cond_23
    :goto_23
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 4760
    .local v4, "out":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4761
    .local v5, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 4763
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 4764
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_11

    .line 4765
    .end local v0    # "append":Z
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :catch_3a
    move-exception v1

    .line 4766
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write log "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4755
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "append":Z
    .restart local v2    # "f":Ljava/io/File;
    :cond_54
    :try_start_54
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_3a

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-lez v6, :cond_23

    .line 4756
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .registers 16
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .param p2, "userId"    # I

    .prologue
    const/4 v10, 0x1

    .line 2961
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2962
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2963
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2964
    const/4 v9, 0x0

    const-string/jumbo v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2965
    const/4 v9, 0x0

    const-string/jumbo v11, "version"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2967
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2968
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    if-ge v4, v0, :cond_6c

    .line 2969
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2971
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-eq v9, p2, :cond_45

    .line 2968
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 2974
    :cond_45
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_42

    .line 2975
    invoke-static {v6, v7}, serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_50} :catch_51

    goto :goto_42

    .line 3014
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catch_51
    move-exception v2

    .line 3015
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const/4 v9, 0x0

    .end local v2    # "e":Ljava/io/IOException;
    :goto_6b
    return v9

    .line 2979
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6c
    :try_start_6c
    iget-object v9, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2980
    const/4 v4, 0x0

    :goto_73
    if-ge v4, v0, :cond_8a

    .line 2981
    iget-object v9, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2983
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v9

    if-eq v9, p2, :cond_86

    .line 2980
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 2986
    :cond_86
    invoke-static {v6, v3}, serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    goto :goto_83

    .line 2989
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_8a
    iget-object v9, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2990
    const/4 v4, 0x0

    :goto_91
    if-ge v4, v0, :cond_aa

    .line 2991
    iget-object v9, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2993
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v9

    if-eq v9, p2, :cond_a6

    .line 2990
    :goto_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 2996
    :cond_a6
    invoke-static {v6, v8}, serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_a3

    .line 2999
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_aa
    iget-object v9, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3000
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_b0
    :goto_b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_de

    .line 3001
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3003
    .local v1, "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_b0

    .line 3006
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3007
    const/4 v11, 0x0

    const-string/jumbo v12, "packageName"

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3008
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b0

    .line 3011
    .end local v1    # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_de
    const/4 v9, 0x0

    const-string/jumbo v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3012
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_e8} :catch_51

    move v9, v10

    .line 3013
    goto :goto_6b
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2815
    iget-object v0, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    invoke-virtual {p0, p1}, onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2818
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 656
    .local v3, "userId":I
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_20

    .line 657
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocateAppWidgetId() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_20
    iget-object v5, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 663
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 664
    :try_start_28
    invoke-direct {p0, v3}, ensureGroupStateLoadedLocked(I)V

    .line 666
    iget-object v5, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_39

    .line 667
    iget-object v5, p0, mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    :cond_39
    invoke-direct {p0, v3}, incrementAndGetAppWidgetIdLocked(I)I

    move-result v0

    .line 674
    .local v0, "appWidgetId":I
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v2, v5, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 675
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 677
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 678
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 679
    iput-object v1, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 681
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {p0, v4}, addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 684
    invoke-direct {p0, v3}, saveGroupStateAsync(I)V

    .line 686
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_87

    .line 687
    const-string v5, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocated widget id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_87
    monitor-exit v6

    return v0

    .line 692
    .end local v0    # "appWidgetId":I
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_89
    move-exception v5

    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_28 .. :try_end_8b} :catchall_89

    throw v5
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 20
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "providerProfileId"    # I
    .param p4, "providerComponent"    # Landroid/content/ComponentName;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 840
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 842
    .local v7, "userId":I
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_20

    .line 843
    const-string v10, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindAppWidgetId() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_20
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 850
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v10

    if-nez v10, :cond_31

    .line 851
    const/4 v10, 0x0

    .line 969
    :goto_30
    return v10

    .line 856
    :cond_31
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_41

    .line 858
    const/4 v10, 0x0

    goto :goto_30

    .line 861
    :cond_41
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 862
    :try_start_44
    invoke-direct {p0, v7}, ensureGroupStateLoadedLocked(I)V

    .line 865
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_55

    .line 867
    const/4 v10, 0x0

    monitor-exit v11

    goto :goto_30

    .line 967
    :catchall_52
    move-exception v10

    monitor-exit v11
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_52

    throw v10

    .line 871
    :cond_55
    :try_start_55
    const-string v10, "com.sec.android.app.launcher"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    if-eqz p5, :cond_a7

    .line 872
    const-string v10, "appWidgetIdForceAllocMode"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "allocMode":Ljava/lang/String;
    const-string v10, "appWidgetIdForceAllocHostId"

    const/4 v12, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 875
    .local v2, "allocHostId":I
    if-eqz v3, :cond_a7

    if-lez v2, :cond_a7

    .line 876
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appWidgetId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".HostId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".alloc : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move/from16 v0, p2

    invoke-direct {p0, p1, v2, v0, v3}, allocateAppWidgetIdWhileBindingLocked(Ljava/lang/String;IILjava/lang/String;)Z

    .line 887
    .end local v2    # "allocHostId":I
    .end local v3    # "allocMode":Ljava/lang/String;
    :cond_a7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move/from16 v0, p2

    invoke-direct {p0, v0, v10, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v8

    .line 890
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v8, :cond_d1

    .line 891
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad widget id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_30

    .line 895
    :cond_d1
    iget-object v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v10, :cond_101

    .line 896
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Widget id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already bound to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v13, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_30

    .line 901
    :cond_101
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p3

    invoke-direct {p0, v10, v0}, getUidForPackage(Ljava/lang/String;I)I

    move-result v6

    .line 903
    .local v6, "providerUid":I
    if-gez v6, :cond_13f

    .line 904
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not installed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for profile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_30

    .line 911
    :cond_13f
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {v5, v6, v0, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 912
    .local v5, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v5}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    .line 914
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v4, :cond_177

    .line 915
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No widget provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for profile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_30

    .line 920
    :cond_177
    iget-boolean v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v10, :cond_197

    .line 921
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_30

    .line 927
    :cond_197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 928
    .local v1, "SmallcIntent":Landroid/content/Intent;
    const-string v10, "android.intent.WIDGETSSR.WIDGETADD"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string/jumbo v10, "pkgname"

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v10

    invoke-direct {p0, v1, v10}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 931
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send intent for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput-object v4, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 935
    if-eqz p5, :cond_243

    invoke-static/range {p5 .. p5}, cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    :goto_1d8
    iput-object v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 937
    invoke-virtual {p0, v8}, onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 940
    iget-object v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v12, "appWidgetCategory"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1ef

    .line 941
    iget-object v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v12, "appWidgetCategory"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    :cond_1ef
    iget-object v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 948
    .local v9, "widgetCount":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_200

    .line 950
    invoke-direct {p0, v4}, sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 957
    :cond_200
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v12, 0x0

    aput p2, v10, v12

    invoke-direct {p0, v4, v10}, sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 960
    iget-object v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v10}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v10

    invoke-direct {p0, v4, v10}, registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 962
    invoke-direct {p0, v7}, saveGroupStateAsync(I)V

    .line 964
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_23f

    .line 965
    const-string v10, "AppWidgetServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bound widget "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_23f
    monitor-exit v11

    .line 969
    const/4 v10, 0x1

    goto/16 :goto_30

    .line 935
    .end local v9    # "widgetCount":I
    :cond_243
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_248
    .catchall {:try_start_55 .. :try_end_248} :catchall_52

    goto :goto_1d8
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callbacks"    # Landroid/os/IBinder;

    .prologue
    .line 1088
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 1090
    .local v8, "userId":I
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_20

    .line 1091
    const-string v10, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindRemoteViewsService() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_20
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1097
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1098
    :try_start_28
    invoke-direct {p0, v8}, ensureGroupStateLoadedLocked(I)V

    .line 1102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move/from16 v0, p2

    invoke-direct {p0, v0, v10, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v9

    .line 1105
    .local v9, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v9, :cond_42

    .line 1106
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v12, "Bad widget id"

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1159
    .end local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_3f
    move-exception v10

    monitor-exit v11
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_3f

    throw v10

    .line 1110
    .restart local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_42
    :try_start_42
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v10, :cond_61

    .line 1111
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No provider for widget "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1115
    :cond_61
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1119
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1121
    .local v7, "servicePackage":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_81

    .line 1122
    new-instance v10, Ljava/lang/SecurityException;

    const-string v12, "The taget service not in the same package as the widget provider"

    invoke-direct {v10, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1128
    :cond_81
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v12

    invoke-virtual {v10, v1, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1137
    const/4 v2, 0x0

    .line 1138
    .local v2, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v3, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1139
    .local v3, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 1141
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v10, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 1142
    iget-object v10, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 1143
    .restart local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1144
    invoke-direct {p0, v2}, unbindService(Landroid/content/ServiceConnection;)V

    .line 1145
    iget-object v10, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_b7
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/os/IBinder;)V

    .line 1151
    .restart local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v10}, bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 1152
    iget-object v10, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 1158
    .local v6, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move/from16 v0, p2

    invoke-direct {p0, v0, v6}, incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V

    .line 1159
    monitor-exit v11
    :try_end_e4
    .catchall {:try_start_42 .. :try_end_e4} :catchall_3f

    .line 1160
    return-void
.end method

.method clearWidgetsLocked()V
    .registers 2

    .prologue
    .line 2873
    iget-object v0, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2875
    invoke-direct {p0}, onWidgetsClearedLocked()V

    .line 2876
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 22
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I

    .prologue
    .line 789
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 791
    .local v14, "userId":I
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_21

    .line 792
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createAppWidgetConfigIntentSender() "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 799
    :try_start_31
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, ensureGroupStateLoadedLocked(I)V

    .line 803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v15

    .line 806
    .local v15, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v15, :cond_64

    .line 807
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad widget id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_61
    move-exception v4

    monitor-exit v16
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_61

    throw v4

    .line 810
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_64
    :try_start_64
    iget-object v12, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 811
    .local v12, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v12, :cond_83

    .line 812
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widget not bound "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 816
    :cond_83
    move/from16 v0, p3

    and-int/lit16 v13, v0, -0xc4

    .line 818
    .local v13, "secureFlags":I
    new-instance v6, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v6, "intent":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    move/from16 v0, p2

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    iget-object v4, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 821
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_61

    move-result-wide v10

    .line 826
    .local v10, "identity":J
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x54000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_bd
    .catchall {:try_start_a3 .. :try_end_bd} :catchall_c3

    move-result-object v4

    .line 832
    :try_start_be
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16

    return-object v4

    :catchall_c3
    move-exception v4

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_61
.end method

.method public deleteAllHosts()V
    .registers 10

    .prologue
    .line 1242
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1244
    .local v4, "userId":I
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_21

    .line 1245
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteAllHosts() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_21
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1249
    :try_start_24
    invoke-direct {p0, v4}, ensureGroupStateLoadedLocked(I)V

    .line 1251
    const/4 v1, 0x0

    .line 1253
    .local v1, "changed":Z
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1254
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_30
    if-ltz v3, :cond_69

    .line 1255
    iget-object v5, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1258
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v5, v7, :cond_66

    .line 1259
    invoke-direct {p0, v2}, deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1260
    const/4 v1, 0x1

    .line 1262
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_66

    .line 1263
    const-string v5, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 1268
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_69
    if-eqz v1, :cond_97

    .line 1269
    invoke-direct {p0, v4}, saveGroupStateAsync(I)V

    .line 1271
    sget-boolean v5, DEBUG_NO_SHIP:Z

    if-eqz v5, :cond_97

    .line 1272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteAllHosts from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".u"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, writeLogToFile(Ljava/lang/String;)V

    .line 1275
    :cond_97
    monitor-exit v6

    .line 1276
    return-void

    .line 1275
    .end local v0    # "N":I
    .end local v1    # "changed":Z
    .end local v3    # "i":I
    :catchall_99
    move-exception v5

    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_24 .. :try_end_9b} :catchall_99

    throw v5
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 697
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 699
    .local v0, "userId":I
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 700
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteAppWidgetId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 706
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 707
    :try_start_29
    invoke-direct {p0, v0}, ensureGroupStateLoadedLocked(I)V

    .line 711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v1

    .line 714
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_38

    .line 715
    monitor-exit v3

    .line 731
    :goto_37
    return-void

    .line 718
    :cond_38
    invoke-direct {p0, v1}, deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 720
    invoke-direct {p0, v0}, saveGroupStateAsync(I)V

    .line 722
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_68

    .line 723
    const-string v2, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_68
    sget-boolean v2, DEBUG_NO_SHIP:Z

    if-eqz v2, :cond_8d

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteAppWidgetId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".u"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, writeLogToFile(Ljava/lang/String;)V

    .line 730
    :cond_8d
    monitor-exit v3

    goto :goto_37

    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_8f
    move-exception v2

    monitor-exit v3
    :try_end_91
    .catchall {:try_start_29 .. :try_end_91} :catchall_8f

    throw v2
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 1205
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1207
    .local v2, "userId":I
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_21

    .line 1208
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteHost() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_21
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1214
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1215
    :try_start_29
    invoke-direct {p0, v2}, ensureGroupStateLoadedLocked(I)V

    .line 1219
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1220
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1222
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v0, :cond_3d

    .line 1223
    monitor-exit v4

    .line 1238
    :goto_3c
    return-void

    .line 1226
    :cond_3d
    invoke-direct {p0, v0}, deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1228
    invoke-direct {p0, v2}, saveGroupStateAsync(I)V

    .line 1230
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_61

    .line 1231
    const-string v3, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_61
    sget-boolean v3, DEBUG_NO_SHIP:Z

    if-eqz v3, :cond_90

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteHost "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".u"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, writeLogToFile(Ljava/lang/String;)V

    .line 1237
    :cond_90
    monitor-exit v4

    goto :goto_3c

    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_92
    move-exception v3

    monitor-exit v4
    :try_end_94
    .catchall {:try_start_29 .. :try_end_94} :catchall_92

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 536
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 542
    :try_start_2f
    iget-object v3, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 543
    .local v0, "N":I
    const-string v3, "Providers:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_4b

    .line 545
    iget-object v3, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v3, v2, p2}, dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 548
    :cond_4b
    iget-object v3, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 549
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    const-string v3, "Widgets:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const/4 v2, 0x0

    :goto_5c
    if-ge v2, v0, :cond_6c

    .line 552
    iget-object v3, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v3, v2, p2}, dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 555
    :cond_6c
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v3, "Hosts:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const/4 v2, 0x0

    :goto_7d
    if-ge v2, v0, :cond_8d

    .line 559
    iget-object v3, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v3, v2, p2}, dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 563
    :cond_8d
    iget-object v3, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 564
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v3, "Grants:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    :goto_9e
    if-ge v2, v0, :cond_ae

    .line 567
    iget-object v3, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 568
    .local v1, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v1, v2, p2}, dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 572
    .end local v1    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_ae
    iget-object v3, p0, mHostHistory:[Ljava/lang/String;

    array-length v0, v3

    .line 573
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string v3, "Host history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x0

    :goto_bc
    if-ge v2, v0, :cond_d3

    .line 576
    iget-object v3, p0, mHostHistory:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_d0

    .line 577
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mHostHistory:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    :cond_d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    .line 580
    :cond_d3
    monitor-exit v4

    .line 581
    return-void

    .line 580
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_d5
    move-exception v3

    monitor-exit v4
    :try_end_d7
    .catchall {:try_start_2f .. :try_end_d7} :catchall_d5

    throw v3
.end method

.method public getAllProvidersForProfile(II)Ljava/util/List;
    .registers 12
    .param p1, "categoryFilter"    # I
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_12

    .line 2295
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Can only be called by system user"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2298
    :cond_12
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_2f

    .line 2299
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAllProvidersForProfile() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_2f
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2303
    :try_start_32
    invoke-direct {p0, p2}, ensureGroupStateLoadedLocked(I)V

    .line 2305
    const/4 v5, 0x0

    .line 2307
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v6, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2308
    .local v3, "providerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    if-ge v0, v3, :cond_71

    .line 2309
    iget-object v6, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2310
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2313
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-boolean v6, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v6, :cond_52

    iget v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v6, p1

    if-nez v6, :cond_55

    .line 2308
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 2318
    :cond_55
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2319
    .local v4, "providerProfileId":I
    if-ne v4, p2, :cond_52

    .line 2320
    if-nez v5, :cond_66

    .line 2321
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_66
    invoke-static {v1}, cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 2328
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "providerCount":I
    .end local v4    # "providerProfileId":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_6e
    move-exception v6

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_32 .. :try_end_70} :catchall_6e

    throw v6

    .line 2327
    .restart local v0    # "i":I
    .restart local v3    # "providerCount":I
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_71
    :try_start_71
    monitor-exit v7
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6e

    return-object v5
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2255
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2257
    .local v6, "returnListWidget":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-eq v8, v9, :cond_21

    .line 2258
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Can only be called by system user"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_17

    .line 2283
    :catch_17
    move-exception v0

    .line 2284
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "AppWidgetServiceImpl"

    const-string/jumbo v9, "error in getAllWidgets"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    return-object v6

    .line 2260
    :cond_21
    :try_start_21
    iget-object v8, p0, mHosts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2261
    .local v1, "hs":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p2, :cond_27

    .line 2262
    if-eqz p1, :cond_4b

    if-eqz p1, :cond_27

    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2263
    :cond_4b
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2264
    .local v7, "widgetId":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 2265
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2267
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 2269
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_79
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2270
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_96

    .line 2271
    iget v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 2273
    :cond_96
    if-nez v4, :cond_51

    .line 2274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2275
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2276
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_ad} :catch_17

    goto :goto_51
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1033
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1035
    .local v2, "userId":I
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_21

    .line 1036
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppWidgetIds() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_21
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1042
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1043
    :try_start_2d
    invoke-direct {p0, v2}, ensureGroupStateLoadedLocked(I)V

    .line 1047
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v1, v3, p1, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1048
    .local v1, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v1}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1050
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_48

    .line 1051
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v3}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v3

    monitor-exit v4

    .line 1054
    :goto_47
    return-object v3

    :cond_48
    const/4 v3, 0x0

    new-array v3, v3, [I

    monitor-exit v4

    goto :goto_47

    .line 1055
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v1    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_4d

    throw v3
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1062
    .local v2, "userId":I
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_21

    .line 1063
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppWidgetIdsForHost() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_21
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1069
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1070
    :try_start_29
    invoke-direct {p0, v2}, ensureGroupStateLoadedLocked(I)V

    .line 1074
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1075
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1077
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_43

    .line 1078
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {v3}, getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v3

    monitor-exit v4

    .line 1081
    :goto_42
    return-object v3

    :cond_43
    const/4 v3, 0x0

    new-array v3, v3, [I

    monitor-exit v4

    goto :goto_42

    .line 1082
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1280
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1282
    .local v0, "userId":I
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 1283
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppWidgetInfo() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1289
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1290
    :try_start_29
    invoke-direct {p0, v0}, ensureGroupStateLoadedLocked(I)V

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v1

    .line 1297
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_4a

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_4a

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_4a

    .line 1298
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2}, cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    monitor-exit v3

    .line 1301
    :goto_49
    return-object v2

    :cond_4a
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_49

    .line 1302
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1369
    .local v0, "userId":I
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 1370
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppWidgetOptions() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1376
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1377
    :try_start_29
    invoke-direct {p0, v0}, ensureGroupStateLoadedLocked(I)V

    .line 1381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v1

    .line 1384
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_42

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_42

    .line 1385
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-static {v2}, cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v3

    .line 1388
    :goto_41
    return-object v2

    :cond_42
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v3

    goto :goto_41

    .line 1389
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1309
    .local v0, "userId":I
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 1310
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppWidgetViews() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1316
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1317
    :try_start_29
    invoke-direct {p0, v0}, ensureGroupStateLoadedLocked(I)V

    .line 1321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v1

    .line 1324
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_3e

    .line 1325
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-static {v2}, cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    monitor-exit v3

    .line 1328
    :goto_3d
    return-object v2

    :cond_3e
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_3d

    .line 1329
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .param p1, "categoryFilter"    # I
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1485
    .local v6, "userId":I
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_21

    .line 1486
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getInstalledProvidersForProfiles() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_21
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v7, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 1491
    const/4 v7, 0x0

    .line 1518
    :goto_2a
    return-object v7

    .line 1494
    :cond_2b
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1495
    :try_start_2e
    invoke-direct {p0, v6}, ensureGroupStateLoadedLocked(I)V

    .line 1497
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1500
    .local v3, "providerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    if-ge v0, v3, :cond_7a

    .line 1501
    iget-object v7, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1502
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1505
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-boolean v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v7, :cond_52

    iget v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v7, p1

    if-nez v7, :cond_55

    .line 1500
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 1510
    :cond_55
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1511
    .local v4, "providerProfileId":I
    if-ne v4, p2, :cond_52

    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1514
    invoke-static {v1}, cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1519
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "providerCount":I
    .end local v4    # "providerProfileId":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_77
    move-exception v7

    monitor-exit v8
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_77

    throw v7

    .line 1518
    .restart local v0    # "i":I
    .restart local v3    # "providerCount":I
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_7a
    :try_start_7a
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v8
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_77

    goto :goto_2a
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 3
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
    .line 2426
    iget-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2431
    iget-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I

    .prologue
    .line 735
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 736
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasBindAppWidgetPermission() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 742
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 744
    :try_start_29
    invoke-direct {p0, p2}, ensureGroupStateLoadedLocked(I)V

    .line 746
    invoke-direct {p0, p1, p2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 747
    .local v1, "packageUid":I
    if-gez v1, :cond_35

    .line 748
    const/4 v2, 0x0

    monitor-exit v3

    .line 752
    :goto_34
    return v2

    .line 751
    :cond_35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 752
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_34

    .line 753
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "packageUid":I
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2886
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_24

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2892
    .local v0, "callingUid":I
    :goto_18
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_29

    .line 2893
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the system process can call this"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2889
    .end local v0    # "callingUid":I
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_18

    .line 2895
    :cond_29
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2896
    :try_start_2c
    iget-object v2, p0, mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2897
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_3c

    .line 2898
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    .line 2901
    :goto_3b
    return v2

    .line 2900
    :cond_3c
    monitor-exit v3

    .line 2901
    const/4 v2, 0x0

    goto :goto_3b

    .line 2900
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "viewId"    # I

    .prologue
    .line 1415
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1417
    .local v3, "userId":I
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_21

    .line 1418
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAppWidgetViewDataChanged() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_21
    iget-object v5, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1424
    if-eqz p2, :cond_2b

    array-length v5, p2

    if-nez v5, :cond_2c

    .line 1445
    :cond_2b
    :goto_2b
    return-void

    .line 1428
    :cond_2c
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1429
    :try_start_2f
    invoke-direct {p0, v3}, ensureGroupStateLoadedLocked(I)V

    .line 1431
    array-length v0, p2

    .line 1432
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v0, :cond_48

    .line 1433
    aget v1, p2, v2

    .line 1437
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v1, v5, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v4

    .line 1440
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v4, :cond_45

    .line 1441
    invoke-direct {p0, v4, p3}, scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 1432
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1444
    .end local v1    # "appWidgetId":I
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_48
    monitor-exit v6

    goto :goto_2b

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_4a
    move-exception v5

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_4a

    throw v5
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3525
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v3

    .line 3529
    .local v3, "parentId":I
    if-eq v3, p1, :cond_6d

    .line 3530
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3531
    const/4 v7, 0x0

    .line 3533
    .local v7, "providersChanged":Z
    :try_start_c
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3534
    .local v4, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3535
    .local v6, "providerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v6, :cond_36

    .line 3536
    iget-object v9, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3537
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-ne v9, p1, :cond_33

    .line 3538
    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3535
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 3542
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 3543
    .local v1, "packageCount":I
    const/4 v0, 0x0

    :goto_3b
    if-ge v0, v1, :cond_4f

    .line 3544
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3545
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3546
    const/4 v9, 0x0

    invoke-direct {p0, v2, p1, v9}, updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    or-int/2addr v7, v9

    .line 3543
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 3551
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 3552
    .local v8, "removedCount":I
    const/4 v0, 0x0

    :goto_54
    if-ge v0, v8, :cond_64

    .line 3553
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9, p1}, removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v7, v9

    .line 3552
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 3557
    :cond_64
    if-eqz v7, :cond_6c

    .line 3558
    invoke-direct {p0, p1}, saveGroupStateAsync(I)V

    .line 3559
    invoke-direct {p0, p1}, scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3561
    :cond_6c
    monitor-exit v10

    .line 3563
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    .end local v4    # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "providerCount":I
    .end local v7    # "providersChanged":Z
    .end local v8    # "removedCount":I
    :cond_6d
    return-void

    .line 3561
    .restart local v7    # "providersChanged":Z
    :catchall_6e
    move-exception v9

    monitor-exit v10
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_6e

    throw v9
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2825
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v2, :cond_5

    .line 2833
    :goto_4
    return-void

    .line 2827
    :cond_5
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v1

    .line 2828
    .local v1, "userId":I
    iget-object v2, p0, mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2829
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1f

    .line 2830
    iget-object v2, p0, mWidgetPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .restart local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2832
    :cond_1f
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1405
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 1406
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "partiallyUpdateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1410
    return-void
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2841
    iget-object v0, p0, mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2843
    invoke-direct {p0, p1}, onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2844
    return-void
.end method

.method public restoreFinished(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2446
    iget-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    .line 2447
    return-void
.end method

.method public restoreStarting(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2436
    iget-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    .line 2437
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2441
    iget-object v0, p0, mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2442
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .prologue
    .line 2209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2211
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2212
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2213
    const-string v1, "appWidgetOptions"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2214
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2215
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I
    .param p3, "grantPermission"    # Z

    .prologue
    .line 759
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 760
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBindAppWidgetPermission() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 766
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_29
    invoke-direct {p0, p2}, ensureGroupStateLoadedLocked(I)V

    .line 770
    invoke-direct {p0, p1, p2}, getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 771
    .local v1, "packageUid":I
    if-gez v1, :cond_34

    .line 772
    monitor-exit v3

    .line 784
    :goto_33
    return-void

    .line 775
    :cond_34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 776
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_4b

    .line 777
    iget-object v2, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 782
    :goto_43
    invoke-direct {p0, p2}, saveGroupStateAsync(I)V

    .line 783
    monitor-exit v3

    goto :goto_33

    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "packageUid":I
    :catchall_48
    move-exception v2

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v2

    .line 779
    .restart local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "packageUid":I
    :cond_4b
    :try_start_4b
    iget-object v2, p0, mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    goto :goto_43
.end method

.method public setSafeMode(Z)V
    .registers 2
    .param p1, "safeMode"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, mSafeMode:Z

    .line 354
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 18
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 586
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 588
    .local v7, "userId":I
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_21

    .line 589
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startListening() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_21
    iget-object v9, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v9, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 595
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 596
    :try_start_29
    invoke-direct {p0, v7}, ensureGroupStateLoadedLocked(I)V

    .line 600
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move/from16 v0, p3

    invoke-direct {v4, v9, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 601
    .local v4, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v4}, lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 603
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 605
    const-string v9, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startListening callbacks : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start listening : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 608
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->clear()V

    .line 610
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 611
    .local v5, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 612
    .local v1, "N":I
    new-array v6, v1, [I

    .line 613
    .local v6, "updatedIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7a
    if-ge v3, v1, :cond_94

    .line 614
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 615
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v9, v6, v3

    .line 616
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-static {v9}, cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 619
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_94
    monitor-exit v10

    return-object v6

    .line 620
    .end local v1    # "N":I
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "i":I
    .end local v4    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v5    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v6    # "updatedIds":[I
    :catchall_96
    move-exception v9

    monitor-exit v10
    :try_end_98
    .catchall {:try_start_29 .. :try_end_98} :catchall_96

    throw v9
.end method

.method public stopListening(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 625
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 627
    .local v2, "userId":I
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_21

    .line 628
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopListening() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_21
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 634
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 635
    :try_start_29
    invoke-direct {p0, v2}, ensureGroupStateLoadedLocked(I)V

    .line 639
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 640
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 642
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_61

    .line 643
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 644
    invoke-direct {p0, v0}, pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 646
    const-string v3, "AppWidgetServiceImpl"

    const-string/jumbo v5, "stopListening callbacks : null"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop listening : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, updateHostHistoryLocked(Ljava/lang/String;)V

    .line 649
    :cond_61
    monitor-exit v4

    .line 650
    return-void

    .line 649
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_63
    move-exception v3

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_29 .. :try_end_65} :catchall_63

    throw v3
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1164
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1166
    .local v2, "userId":I
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_21

    .line 1167
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbindRemoteViewsService() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_21
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1173
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1174
    :try_start_29
    invoke-direct {p0, v2}, ensureGroupStateLoadedLocked(I)V

    .line 1178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Landroid/content/Intent$FilterComparison;

    invoke-direct {v6, p3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1180
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p2, v4, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    .line 1190
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v3, :cond_67

    .line 1191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad widget id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1200
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_64
    move-exception v4

    monitor-exit v5
    :try_end_66
    .catchall {:try_start_29 .. :try_end_66} :catchall_64

    throw v4

    .line 1194
    .restart local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .restart local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_67
    :try_start_67
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 1196
    .local v0, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1197
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1198
    iget-object v4, p0, mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .end local v0    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_64

    .line 1201
    return-void
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1395
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 1396
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1400
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1334
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1336
    .local v0, "userId":I
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_21

    .line 1337
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAppWidgetOptions() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_21
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1343
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1344
    :try_start_29
    invoke-direct {p0, v0}, ensureGroupStateLoadedLocked(I)V

    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v1

    .line 1351
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_38

    .line 1352
    monitor-exit v3

    .line 1363
    :goto_37
    return-void

    .line 1356
    :cond_38
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1359
    invoke-virtual {p0, v1}, sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1361
    invoke-direct {p0, v0}, saveGroupStateAsync(I)V

    .line 1362
    monitor-exit v3

    goto :goto_37

    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1449
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1451
    .local v5, "userId":I
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_21

    .line 1452
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppWidgetProvider() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_21
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1458
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1459
    :try_start_2d
    invoke-direct {p0, v5}, ensureGroupStateLoadedLocked(I)V

    .line 1463
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    invoke-direct {v4, v7, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1464
    .local v4, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1466
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_5a

    .line 1467
    const-string v7, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Provider doesn\'t exist "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    monitor-exit v8

    .line 1478
    :goto_59
    return-void

    .line 1471
    :cond_5a
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 1472
    .local v2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1473
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_61
    if-ge v1, v0, :cond_70

    .line 1474
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1475
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v7, 0x0

    invoke-direct {p0, v6, p2, v7}, updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1473
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1477
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_70
    monitor-exit v8

    goto :goto_59

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :catchall_72
    move-exception v7

    monitor-exit v8
    :try_end_74
    .catchall {:try_start_2d .. :try_end_74} :catchall_72

    throw v7
.end method
