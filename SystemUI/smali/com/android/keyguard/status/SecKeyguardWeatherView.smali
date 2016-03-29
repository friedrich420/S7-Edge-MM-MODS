.class public Lcom/android/keyguard/status/SecKeyguardWeatherView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardWeatherView.java"

# interfaces
.implements Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;


# instance fields
.field private mChinaHighTemperature:Landroid/widget/TextView;

.field private mChinaLowTemperature:Landroid/widget/TextView;

.field private mCityIcon:Landroid/widget/ImageView;

.field private mCityName:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsHighLowTempModeEnable:Z

.field private mIsWeatherShowing:Z

.field private mLatteHighTemperature:Landroid/widget/TextView;

.field private mLatteLowTemperature:Landroid/widget/TextView;

.field private mLifeDustIcon:Landroid/widget/ImageView;

.field private mLifeDustLayout:Landroid/widget/LinearLayout;

.field private mLifeDustText:Landroid/widget/TextView;

.field private mSeparatorText:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUnit:Landroid/widget/ImageView;

.field private mUnitLow:Landroid/widget/ImageView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    .line 75
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 93
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardWeatherView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardWeatherView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUpdateHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardWeatherView;)Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/status/SecKeyguardWeatherView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardWeatherView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->init()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/status/SecKeyguardWeatherView;Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherView;
    .param p1, "x1"    # Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->handleWeatherUpdate(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 496
    .local v0, "themeOn":Z
    iget-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 498
    .local v1, "whiteBG":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 500
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 502
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteHighTemperature:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteLowTemperature:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 506
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 508
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 510
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 512
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 514
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0, v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackImageOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/ImageView;ZZ)V

    .line 515
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0, v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackImageOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/ImageView;ZZ)V

    .line 516
    return-void
.end method

.method private findAndSetViews()V
    .locals 1

    .prologue
    .line 476
    sget v0, Lcom/android/keyguard/R$id;->weather_small_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIcon:Landroid/widget/ImageView;

    .line 477
    sget v0, Lcom/android/keyguard/R$id;->weather_small_temp:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    .line 478
    sget v0, Lcom/android/keyguard/R$id;->weather_small_unit:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    .line 479
    sget v0, Lcom/android/keyguard/R$id;->weather_city_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    .line 480
    sget v0, Lcom/android/keyguard/R$id;->weather_city_name:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    .line 484
    sget v0, Lcom/android/keyguard/R$id;->weather_small_high_temp:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    .line 485
    sget v0, Lcom/android/keyguard/R$id;->weather_small_low_temp:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    .line 486
    sget v0, Lcom/android/keyguard/R$id;->weather_small_Separator:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    .line 487
    sget v0, Lcom/android/keyguard/R$id;->weather_small_low_unit:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnitLow:Landroid/widget/ImageView;

    .line 489
    sget v0, Lcom/android/keyguard/R$id;->weather_life_dust_layout:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustLayout:Landroid/widget/LinearLayout;

    .line 490
    sget v0, Lcom/android/keyguard/R$id;->weather_life_dust:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    .line 491
    sget v0, Lcom/android/keyguard/R$id;->weather_dust_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustIcon:Landroid/widget/ImageView;

    .line 492
    return-void
.end method

.method private getEmergencyModeEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getKidsModeEnabled()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->istKidsHomeModeEnabled()Z

    move-result v0

    return v0
.end method

.method private getLastSelLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->isOwnerUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    const-string v1, "SecKeyguardWeatherView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "-"

    .line 383
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherCityIconImageResources()I
    .locals 3

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getLastSelLocation()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "cityId":Ljava/lang/String;
    const-string v2, "cityId:current"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getSystemLocation()I

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location:I

    .line 355
    .local v1, "resource":I
    :goto_0
    return v1

    .line 351
    .end local v1    # "resource":I
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location_unable:I

    .restart local v1    # "resource":I
    goto :goto_0

    .line 353
    .end local v1    # "resource":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "resource":I
    goto :goto_0
.end method

.method private getWeatherEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 388
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 391
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getShowLockAndCover()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleWeatherUpdate(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V
    .locals 22
    .param p1, "info"    # Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .prologue
    .line 185
    const-string v19, "SecKeyguardWeatherView"

    const-string v20, "handleWeatherUpdate()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getWeatherEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getIconNumber()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getWidgetCount()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getLastSelLocation()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 342
    :goto_1
    return-void

    .line 187
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findAndSetViews()V

    .line 196
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->updateLifeDustInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getIconNumber()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getImage(I)I

    move-result v9

    .line 199
    .local v9, "img":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 200
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getWeatherCityIconImageResources()I

    move-result v4

    .line 203
    .local v4, "cityIconRes":I
    if-eqz v4, :cond_6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    .end local v4    # "cityIconRes":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 214
    .local v16, "tempInt":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "curLanguage":Ljava/lang/String;
    const-string v19, "ar"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "fa"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 217
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->toDigitString(I)Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, "tempText":Ljava/lang/String;
    :goto_3
    const-string v19, "-"

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentTemperature()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 222
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    .line 226
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getHighTemperature()F

    move-result v7

    .line 231
    .local v7, "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getLowTemperature()F

    move-result v13

    .line 232
    .local v13, "lowTemp":F
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "StrHigh":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "StrLow":Ljava/lang/String;
    const-string v19, "SecKeyguardWeatherView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWeatherUpdate() High/Low only mode [high, low] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 242
    const-string v19, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isTabletDevice()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x42100000    # 36.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41f00000    # 30.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x42100000    # 36.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    .end local v2    # "StrHigh":Ljava/lang/String;
    .end local v3    # "StrLow":Ljava/lang/String;
    .end local v7    # "highTemp":F
    .end local v13    # "lowTemp":F
    :goto_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isTabletDevice()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getHighTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 306
    .local v8, "highTempInt":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getLowTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 307
    .local v14, "lowTempInt":I
    const-string v19, "ar"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "fa"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 308
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->toDigitString(I)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, "latteHighTempText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->toDigitString(I)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "latteLowTempText":Ljava/lang/String;
    :goto_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 315
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    .end local v8    # "highTempInt":I
    .end local v10    # "latteHighTempText":Ljava/lang/String;
    .end local v11    # "latteLowTempText":Ljava/lang/String;
    .end local v14    # "lowTempInt":I
    :cond_5
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->changeTextColorOnWhiteWallpaper()V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->updateTemperatureFont()V

    goto/16 :goto_1

    .line 207
    .end local v5    # "curLanguage":Ljava/lang/String;
    .end local v16    # "tempInt":I
    .end local v17    # "tempText":Ljava/lang/String;
    .restart local v4    # "cityIconRes":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 219
    .end local v4    # "cityIconRes":I
    .restart local v5    # "curLanguage":Ljava/lang/String;
    .restart local v16    # "tempInt":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tempText":Ljava/lang/String;
    goto/16 :goto_3

    .line 224
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    goto/16 :goto_4

    .line 247
    .restart local v2    # "StrHigh":Ljava/lang/String;
    .restart local v3    # "StrLow":Ljava/lang/String;
    .restart local v7    # "highTemp":F
    .restart local v13    # "lowTemp":F
    :cond_9
    const/16 v18, 0x14

    .line 248
    .local v18, "textSize":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v15, v19, v20

    .line 249
    .local v15, "strLength":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_small_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    .local v12, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .restart local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .end local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 265
    mul-int/lit8 v19, v18, 0x3

    div-int/lit8 v18, v19, 0x4

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 260
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_normal_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    goto :goto_9

    .line 282
    .end local v2    # "StrHigh":Ljava/lang/String;
    .end local v3    # "StrLow":Ljava/lang/String;
    .end local v7    # "highTemp":F
    .end local v13    # "lowTemp":F
    .end local v15    # "strLength":I
    .end local v18    # "textSize":I
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 311
    .restart local v8    # "highTempInt":I
    .restart local v14    # "lowTempInt":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getHighTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    .line 312
    .restart local v10    # "latteHighTempText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getLowTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getValidTemp(F)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "latteLowTempText":Ljava/lang/String;
    goto/16 :goto_7

    .line 324
    .end local v8    # "highTempInt":I
    .end local v10    # "latteHighTempText":Ljava/lang/String;
    .end local v11    # "latteLowTempText":Ljava/lang/String;
    .end local v14    # "lowTempInt":I
    :cond_d
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isTabletDevice()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private init()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getEmergencyModeEnabled()Z

    move-result v1

    .line 120
    .local v1, "isEmergencyModeEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getKidsModeEnabled()Z

    move-result v2

    .line 122
    .local v2, "isKidsMode":Z
    const-string v3, "SecKeyguardWeatherView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init() : isEmergencyModeEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isKidsMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 125
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    .line 127
    .local v0, "hasCocktailbar":Z
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 128
    const-string v3, "SecKeyguardWeatherView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWeatherEnabled()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getWeatherEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getWeatherEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getIconNumber()I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getWidgetCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getLastSelLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    .line 133
    iget-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    if-nez v3, :cond_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    .line 134
    const-string v3, "SecKeyguardWeatherView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWeatherContainer.setVisibility("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "), "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->getLastSelLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsWeatherShowing:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    .end local v0    # "hasCocktailbar":Z
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "hasCocktailbar":Z
    :cond_2
    move v3, v5

    .line 129
    goto :goto_0

    :cond_3
    move v5, v6

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    const-string v3, "SecKeyguardWeatherView"

    const-string v4, "mWeatherView == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 140
    .end local v0    # "hasCocktailbar":Z
    :cond_5
    const-string v3, "SecKeyguardWeatherView"

    const-string v4, "mAdaptiveInfoArea.setVisibility(View.GONE);"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_2
.end method

.method private updateLifeDustInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 436
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->supportFineDustWeatherInfo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentLifeDust()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentLifeDust()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 454
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$drawable;->weather_widget_dust_plenty:I

    .line 455
    .local v1, "res":I
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_4_bad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "dustText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 445
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v1    # "res":I
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$drawable;->weather_widget_dust_little:I

    .line 446
    .restart local v1    # "res":I
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_3_some_bad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "dustText":Ljava/lang/String;
    goto :goto_1

    .line 449
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v1    # "res":I
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$drawable;->weather_widget_dust_veryhigh:I

    .line 450
    .restart local v1    # "res":I
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_5_very_bad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .restart local v0    # "dustText":Ljava/lang/String;
    goto :goto_1

    .line 464
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v1    # "res":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateTemperatureFont()V
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "clockThemeFont":Ljava/lang/String;
    const/4 v1, 0x0

    .line 414
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 415
    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 419
    :goto_0
    if-nez v1, :cond_2

    .line 433
    :cond_0
    :goto_1
    return-void

    .line 417
    :cond_1
    const-string v2, "samsung-neo-num3L"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mIsHighLowTempModeEnable:Z

    if-eqz v2, :cond_5

    .line 423
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mSeparatorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 430
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->setWeatherInfoUpdateCallback(Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;)V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->setWeatherInfoUpdateCallback(Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 108
    const-string v0, "SecKeyguardWeatherView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v0, Lcom/android/keyguard/R$id;->weather_info_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 115
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->init()V

    .line 116
    return-void
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # I

    .prologue
    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 360
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 361
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_0

    .line 365
    const-string v2, ""

    .line 366
    .local v2, "formatter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 369
    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .prologue
    const/16 v2, 0x1330

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-nez p1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateWeatherViewVisibility()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->init()V

    .line 182
    return-void
.end method
