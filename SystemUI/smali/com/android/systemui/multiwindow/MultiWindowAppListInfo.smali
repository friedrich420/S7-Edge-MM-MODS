.class public Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.super Ljava/lang/Object;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    }
.end annotation


# static fields
.field static mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentDate:I

.field private static mDefaultIconSize:I

.field private static mIconTraySetting:I

.field private static final mLock:Ljava/lang/Object;

.field static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;


# instance fields
.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private mAppListImageSize:I

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mDefaultIconSizeForDensity:I

.field private mIsAppListLoaded:Z

.field private mIsAppListLoadedforKnox:Z

.field private mIsUseDefaultTheme:Z

.field private mMultiWindowItemNum:I

.field private mMultiWindowItemNumLand:I

.field private mMultiWindowItemNumPort:I

.field private mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

.field private mShadowAlpha:I

.field private mShadowOfIconY:I

.field private mSupportLegacyTheme:Z

.field private mSupportMultiInstance:Z

.field private mThemeChanged:Z

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private mViewPagerAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private themeBackground:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const/16 v0, 0x30

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSize:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$2;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$2;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0f004c

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->DEBUG:Z

    .line 63
    iput-short v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->ESTIMATE_INVALID_VALUE:S

    .line 64
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    .line 71
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 73
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 74
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    .line 75
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    .line 85
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    .line 86
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoadedforKnox:Z

    .line 105
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "MultiWindowAppListInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput-object p1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 108
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    .line 110
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowOfIconY:I

    .line 111
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowAlpha:I

    .line 112
    new-instance v4, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumPort:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumLand:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    .line 118
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSize:I

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v5, v5, 0xa0

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSizeForDensity:I

    .line 120
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    .line 123
    new-instance v4, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v4, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 124
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v7}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "themeVersion":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    .line 127
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 139
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v1, "pkgMngFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "appListUpdateFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    .line 159
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "tap_to_icon"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIconTraySetting:I

    .line 160
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 162
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "tap_to_icon"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 164
    return-void

    .line 129
    .end local v0    # "appListUpdateFilter":Landroid/content/IntentFilter;
    .end local v1    # "pkgMngFilter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "themePackageName":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 132
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    goto/16 :goto_0

    .line 135
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    goto/16 :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 57
    sput p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 57
    sput-object p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/database/ContentObserver;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIconTraySetting:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 57
    sput p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIconTraySetting:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    .locals 6
    .param p1, "launchItem"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .prologue
    const/4 v3, 0x0

    .line 472
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 473
    .local v2, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "addwithcheckduplicate  duplicated item return false!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_0
    return v3

    .line 478
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    const/4 v3, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "addwithcheckduplicate activityInfo.name error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p1, "drs":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentUser()I
    .locals 4

    .prologue
    .line 1496
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isContainerOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1497
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1498
    .local v0, "mPm":Landroid/os/PersonaManager;
    const/4 v1, 0x0

    .line 1499
    .local v1, "personaId":[I
    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 1502
    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1503
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 1507
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    goto :goto_0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I
    .param p3, "dpi"    # I

    .prologue
    .line 521
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 522
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 2

    .prologue
    .line 178
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isContainerOnlyModeEnabled()Z
    .locals 1

    .prologue
    .line 1492
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getLauncherLargeIconDensity()I

    move-result v5

    .line 621
    .local v5, "highDpi":I
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_5

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 624
    .local v0, "cinfo":Landroid/content/pm/ComponentInfo;
    :goto_0
    sget-object v11, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 626
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 627
    .local v2, "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 629
    .local v3, "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    sget-object v11, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "current_sec_active_themepackage"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "themePackageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 632
    .local v7, "liveIconSupport":Z
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_0

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_0

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    .line 634
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "LiveIconSupport"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 638
    :cond_0
    sget-object v11, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 639
    .local v1, "currentDpi":I
    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSizeForDensity:I

    iget v12, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    if-ge v11, v12, :cond_6

    if-nez v10, :cond_6

    if-nez v7, :cond_6

    if-eq v1, v5, :cond_6

    .line 642
    const/4 v9, 0x0

    .line 645
    .local v9, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v11, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 650
    :goto_1
    if-eqz v9, :cond_2

    .line 651
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_2

    .line 653
    iget-boolean v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    if-nez v11, :cond_1

    .line 654
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolveTheme(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 657
    :cond_1
    if-nez v2, :cond_2

    .line 658
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 659
    .local v6, "iconId":I
    if-eqz v6, :cond_2

    .line 660
    invoke-direct {p0, v9, v6, v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 666
    .end local v6    # "iconId":I
    :cond_2
    if-nez v2, :cond_3

    .line 667
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080093

    invoke-direct {p0, v11, v12, v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 673
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_3
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    if-ge v11, v12, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    if-lt v11, v12, :cond_7

    .line 677
    :cond_4
    new-instance v11, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v3, v11}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 683
    :goto_3
    return-object v11

    .line 621
    .end local v0    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v1    # "currentDpi":I
    .end local v2    # "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "liveIconSupport":Z
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "themePackageName":Ljava/lang/String;
    :cond_5
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto/16 :goto_0

    .line 646
    .restart local v0    # "cinfo":Landroid/content/pm/ComponentInfo;
    .restart local v1    # "currentDpi":I
    .restart local v2    # "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "liveIconSupport":Z
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 647
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    goto :goto_1

    .line 669
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_6
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_3

    .line 670
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v8, v12, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    .line 679
    :cond_7
    if-nez v2, :cond_8

    .line 680
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080093

    invoke-direct {p0, v11, v12, v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 683
    :cond_8
    new-instance v11, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v11}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_3
.end method

.method private loadIconForResolveTheme(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getLauncherLargeIconDensity()I

    move-result v8

    .line 543
    .local v8, "dpi":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 544
    .local v6, "cinfo":Landroid/content/pm/ComponentInfo;
    sget-object v18, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 546
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 548
    .local v16, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 553
    :goto_0
    const/4 v7, 0x0

    .line 556
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 561
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 564
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 566
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    .line 569
    :cond_1
    const/4 v11, 0x0

    .line 570
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_5

    .line 571
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 574
    if-nez v11, :cond_2

    .line 575
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    .line 576
    .local v12, "iconId":I
    if-eqz v12, :cond_2

    if-eqz v16, :cond_2

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 581
    .end local v12    # "iconId":I
    :cond_2
    if-eqz v11, :cond_5

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 584
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v18, v0

    const-string v19, "theme_app_3rd_party_icon"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 585
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 591
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 593
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 595
    .local v10, "height":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 596
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 597
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 598
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 600
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "b":Landroid/graphics/Bitmap;
    move-object/from16 v18, v11

    .line 601
    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 602
    .local v13, "in_bit":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 603
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 604
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 605
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 606
    const/high16 v18, 0x3f400000    # 0.75f

    const/high16 v19, 0x3f400000    # 0.75f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 607
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    neg-int v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 608
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 610
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    sget-object v18, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 615
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "height":I
    .end local v13    # "in_bit":Landroid/graphics/Bitmap;
    .end local v14    # "p":Landroid/graphics/Paint;
    .end local v17    # "width":I
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-object v7

    .line 549
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    .line 550
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 557
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v9

    .line 558
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadAppIconBitmap( "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ) failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 571
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 586
    :catch_2
    move-exception v9

    .line 587
    .restart local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "3rd_party_icon_menu  failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    :cond_0
    return-object v0
.end method

.method private queryResolveInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v1, "launcherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1007
    .local v2, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1010
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1012
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private static refreshRecentsMultiWindow()V
    .locals 2

    .prologue
    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, "refreshIntent":Landroid/content/Intent;
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 770
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public addInstalledPackage(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 874
    const/4 v11, 0x0

    .line 937
    :goto_0
    return v11

    .line 876
    :cond_0
    const/4 v10, 0x0

    .line 877
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateSupportedAppList()V

    .line 879
    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 880
    .local v4, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 881
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 883
    const/4 v11, 0x1

    goto :goto_0

    .line 887
    .end local v4    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_2
    sget-object v11, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 889
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v1, "allLauncherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v5, "launcherIntent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const/16 v11, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v12

    invoke-virtual {v8, v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 894
    .local v6, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 896
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "launcherIntent":Landroid/content/Intent;
    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .restart local v5    # "launcherIntent":Landroid/content/Intent;
    const-string v11, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const/16 v11, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v12

    invoke-virtual {v8, v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 900
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 902
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 903
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 906
    .local v0, "addInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_6

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_6

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 907
    .local v7, "metaDataBundle":Landroid/os/Bundle;
    :goto_1
    if-eqz v7, :cond_7

    const-string v11, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_7

    .line 908
    move-object v0, v9

    .line 925
    .end local v7    # "metaDataBundle":Landroid/os/Bundle;
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 926
    const-string v11, "Recents_MultiWindowAppListInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    .line 928
    .restart local v4    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-direct {p0, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z

    .line 931
    .end local v4    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_5
    if-eqz v0, :cond_3

    .line 932
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 906
    :cond_6
    :try_start_1
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 909
    .restart local v7    # "metaDataBundle":Landroid/os/Bundle;
    :cond_7
    if-eqz v7, :cond_9

    const-string v11, "com.sec.android.support.multiwindow"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v11, :cond_9

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v12, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v12, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 911
    :cond_8
    move-object v0, v9

    goto :goto_2

    .line 912
    :cond_9
    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 913
    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-eqz v11, :cond_3

    .line 917
    :cond_a
    move-object v0, v9

    goto :goto_2

    .line 919
    .end local v7    # "metaDataBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 920
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 921
    const-string v11, "Recents_MultiWindowAppListInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 937
    .end local v0    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1016
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1017
    .local v0, "appListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1018
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 1019
    .local v4, "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v2

    .line 1020
    .local v2, "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 1017
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1024
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1025
    .local v1, "appResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1029
    .end local v1    # "appResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    .end local v4    # "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFlashBarIntent(I)Ljava/util/List;
    .locals 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v13, 0x10200000

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-gez p1, :cond_1

    .line 690
    const-string v8, "Recents_MultiWindowAppListInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFlashBarIntent: invalid index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    :goto_0
    return-object v2

    .line 694
    :cond_1
    const/4 v4, 0x0

    .line 695
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .line 696
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 697
    .local v3, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v4

    .line 699
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_6

    .line 700
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 701
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 704
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :goto_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 710
    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 711
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 715
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    if-eqz v8, :cond_3

    .line 716
    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 718
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 713
    :cond_5
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 721
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 722
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 723
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 724
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v8, :cond_7

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 725
    :cond_7
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    :goto_4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 731
    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 732
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    :goto_5
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    if-eqz v8, :cond_8

    .line 737
    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 739
    :cond_8
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 740
    .local v7, "windowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 741
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 742
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 728
    .end local v7    # "windowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 734
    :cond_a
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_5
.end method

.method public getLauncherLargeIconDensity()I
    .locals 6

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    .line 487
    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 488
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 489
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 491
    .local v2, "sw":I
    const/16 v5, 0x258

    if-ge v2, v5, :cond_0

    .line 514
    .end local v0    # "density":I
    :goto_0
    return v0

    .line 496
    .restart local v0    # "density":I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 514
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 498
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 500
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 502
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 504
    goto :goto_0

    :sswitch_4
    move v0, v4

    .line 506
    goto :goto_0

    :sswitch_5
    move v0, v4

    .line 508
    goto :goto_0

    .line 510
    :sswitch_6
    const/16 v0, 0x280

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
        0x280 -> :sswitch_6
    .end sparse-switch
.end method

.method public getMultiWindowItemNum()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    return v0
.end method

.method public getTotalPageNum()I
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "pageCnt":I
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    div-int v0, v1, v2

    .line 301
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 305
    :cond_0
    return v0
.end method

.method public getViewPagerAppListCnt()I
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    return-object v0
.end method

.method public isAppListLoaded()Z
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isContainerOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoadedforKnox:Z

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    goto :goto_0
.end method

.method public declared-synchronized loadMultiWindowAppList()V
    .locals 22

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    const-string v19, "Recents_MultiWindowAppListInfo"

    const-string v20, "loadMultiWindowAppList"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isContainerOnlyModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoadedforKnox:Z

    move/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_1

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 358
    :cond_1
    const/16 v19, 0x1

    :try_start_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoadedforKnox:Z

    .line 359
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    .line 369
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sput v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateSupportedAppList()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 374
    sget-object v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 375
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const-string v19, "package"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 377
    .local v13, "mIPm":Landroid/content/pm/IPackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v11, "launcherIntent":Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/16 v19, 0x40

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 382
    .local v12, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 383
    .local v16, "r":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 385
    .local v4, "addInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_2

    .line 386
    const/4 v10, 0x0

    .line 388
    .local v10, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :try_start_2
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 389
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 390
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_3

    .line 391
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 393
    :cond_3
    if-eqz v5, :cond_7

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 395
    .local v14, "metaDataBundle":Landroid/os/Bundle;
    :goto_2
    const/16 v18, 0x0

    .line 396
    .local v18, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 397
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 399
    :cond_4
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 400
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 402
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : SKIP package="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 417
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    .end local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 418
    .local v6, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 419
    :try_start_3
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v4, :cond_2

    .line 424
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz v10, :cond_d

    new-instance v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)V

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 352
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v11    # "launcherIntent":Landroid/content/Intent;
    .end local v12    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 362
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 365
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 393
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .restart local v11    # "launcherIntent":Landroid/content/Intent;
    .restart local v12    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "mIPm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_7
    :try_start_5
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_2

    .line 404
    .restart local v14    # "metaDataBundle":Landroid/os/Bundle;
    .restart local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    if-eqz v18, :cond_9

    const-string v19, "hideAppFromMultiWindowList"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 405
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : SKIP WINDOW_STYLE_HIDE_APP_FROM_MULTIWINDOWLIST activity="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    :cond_9
    if-eqz v14, :cond_b

    const-string v19, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 409
    :cond_a
    move-object/from16 v4, v16

    goto/16 :goto_3

    .line 410
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v19

    if-eqz v19, :cond_2

    .line 415
    :cond_c
    move-object/from16 v4, v16

    goto/16 :goto_3

    .line 426
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    .end local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    :try_start_6
    new-instance v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_4

    .line 431
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_e
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "launcherIntent":Landroid/content/Intent;
    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v11    # "launcherIntent":Landroid/content/Intent;
    const-string v19, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const/16 v19, 0x40

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 435
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 436
    .restart local v16    # "r":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 437
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v19, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v19, :cond_f

    .line 441
    :try_start_7
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 442
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 443
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_10

    .line 444
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 446
    :cond_10
    if-eqz v5, :cond_11

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 447
    .restart local v14    # "metaDataBundle":Landroid/os/Bundle;
    :goto_6
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 448
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 449
    if-eqz v14, :cond_f

    const-string v19, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 450
    new-instance v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    .line 451
    .local v9, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 453
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .line 454
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 446
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_11
    :try_start_9
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 460
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_12
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 464
    .local v17, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 466
    .restart local v9    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method public makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 7
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x8000000

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 750
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 751
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v4, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v5, :cond_4

    .line 754
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 765
    :cond_2
    :goto_1
    return-void

    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_3
    move-object v0, v1

    .line 750
    goto :goto_0

    .line 756
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_2

    .line 758
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v4, :cond_6

    const-string v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v5, :cond_2

    const-string v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 760
    :cond_7
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pkgManagerList(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 773
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "actionStr":Ljava/lang/String;
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 776
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 778
    .local v4, "bReplace":Z
    if-nez v4, :cond_7

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 780
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 782
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 783
    const/4 v13, 0x1

    .line 868
    .end local v4    # "bReplace":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :goto_0
    return v13

    .line 786
    :cond_0
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 788
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_REMOVE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 790
    .restart local v4    # "bReplace":Z
    if-nez v4, :cond_7

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 792
    .restart local v9    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 794
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 795
    const/4 v13, 0x1

    goto :goto_0

    .line 798
    .end local v4    # "bReplace":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 800
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 802
    .restart local v9    # "packageName":Ljava/lang/String;
    sget-object v13, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 803
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const-string v13, "package"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 804
    .local v7, "mIPm":Landroid/content/pm/IPackageManager;
    const/4 v8, -0x1

    .line 806
    .local v8, "packageChangedState":I
    if-eqz v12, :cond_2

    .line 808
    :try_start_0
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v13

    invoke-interface {v7, v9, v13}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 812
    :cond_2
    :goto_1
    const/4 v13, 0x3

    if-eq v8, v13, :cond_3

    const/4 v13, 0x2

    if-ne v8, v13, :cond_4

    .line 814
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 816
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 817
    const/4 v13, 0x1

    goto :goto_0

    .line 819
    :cond_4
    if-eqz v8, :cond_5

    const/4 v13, 0x1

    if-ne v8, v13, :cond_6

    .line 821
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 823
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 824
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 827
    :cond_6
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_CHANGED : state is invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .end local v7    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v8    # "packageChangedState":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 829
    :cond_8
    const-string v13, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 832
    .restart local v9    # "packageName":Ljava/lang/String;
    const-string v13, "Recents_MultiWindowAppListInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "android.intent.action.PACKAGE_REPLACED packageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 835
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 836
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 837
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 839
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_a
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 847
    :cond_b
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 848
    .local v10, "pkgList":[Ljava/lang/String;
    if-eqz v10, :cond_c

    array-length v13, v10

    if-nez v13, :cond_d

    .line 850
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 853
    :cond_d
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 854
    .local v3, "available":Z
    if-eqz v3, :cond_f

    .line 855
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_f

    aget-object v11, v2, v5

    .line 856
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    .line 855
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 862
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v11    # "pkgName":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 863
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshRecentsMultiWindow()V

    .line 864
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 866
    .end local v3    # "available":Z
    .end local v10    # "pkgList":[Ljava/lang/String;
    :cond_10
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "RECEIVER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 809
    .restart local v7    # "mIPm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "packageChangedState":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method

.method public refreshAllIcon()V
    .locals 4

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 291
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 292
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 293
    .local v1, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_0
    return-void
.end method

.method public removeInstalledPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 942
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 969
    :goto_0
    return v6

    .line 946
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v4, "rmovedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    const/4 v2, 0x0

    .line 948
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 950
    .local v3, "resolveInfo2":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 951
    .local v1, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 952
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 953
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 954
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 955
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo2()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 956
    if-eqz v3, :cond_1

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 957
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 963
    .end local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 964
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 965
    .restart local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 969
    .end local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method public updateAppListOrder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 322
    new-instance v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;)V

    .line 329
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    .local v0, "allAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, "frequentlyAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 335
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 336
    .local v5, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    iget-object v6, v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 337
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 338
    .local v1, "appName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 339
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    .end local v1    # "appName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v5    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v6, v3}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getSortingList(Ljava/util/List;)Ljava/util/List;

    .line 346
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 347
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    return-void
.end method

.method public updateInstalledPackage(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 974
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 975
    const/4 v9, 0x0

    .line 999
    :cond_0
    return v9

    .line 978
    :cond_1
    const/4 v9, 0x0

    .line 979
    .local v9, "result":Z
    const/4 v8, 0x0

    .line 980
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 982
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 983
    .local v5, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v6

    .line 984
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 985
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 986
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 987
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 988
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 989
    const-string v10, "Recents_MultiWindowAppListInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateInstalledPackage() : item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v5, v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->updateResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 991
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 992
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemTitle()V

    .line 993
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public updateMultiWindowItemNum(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 529
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 530
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumPort:I

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumLand:I

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    goto :goto_0
.end method

.method public updateSupportedAppList()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    .line 310
    return-void
.end method

.method public updateTime()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 199
    .local v0, "calendar":Ljava/util/Calendar;
    sget v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v2

    .line 202
    .local v2, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemTitle()V

    .line 203
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sput v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    .line 207
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
