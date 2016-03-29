.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverWeatherHealthPage.java"


# instance fields
.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mPageAdded:Z

.field private mPedoWidgetEnabled:Z

.field private mRegisteredBroadcast:Z

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

.field private mWeatherLayout:Landroid/widget/LinearLayout;

.field private mWeatherWidgetEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 51
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method private getCPName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "cpName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v0, "Cmaweather"

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    :cond_1
    const-string v0, "Accuweather"

    .line 122
    :cond_2
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCPName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v0
.end method

.method private handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setIconNumber(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentTemperature(F)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTempScale(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setHighTemperature(F)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setLowTemperature(F)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTrusted(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setShowLockAndCover(I)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->dump()V

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "WeatherInfo won\'t update because trusted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDaemon()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    .line 129
    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 131
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 132
    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 133
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->registBroadcast()V

    .line 152
    return-void

    .line 134
    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 136
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 137
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 138
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 141
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 142
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 143
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 146
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 147
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 148
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method private initWeather()V
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/sec/android/sviewcover/R$id;->mini_weather_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    .line 157
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .line 158
    return-void
.end method

.method private isSHealthInstalled()Z
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 163
    .local v0, "isInstalled":Z
    if-nez v0, :cond_0

    .line 164
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return v0

    .line 166
    :cond_0
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidCurrentTemp()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v0

    const v1, 0x4479c000    # 999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestWeatherDataSync()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method private setupChildViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 92
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "setupChildViews"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_weatherhealth_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->addView(Landroid/view/View;II)V

    .line 96
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_clear_shealth_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 97
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "shealth"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initWeather()V

    .line 106
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initDaemon()V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    .line 108
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->requestWeatherDataSync()V

    .line 109
    return-void
.end method

.method private updatePedoWidgetVisibility()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v0

    .line 268
    .local v0, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v4, "lock_additional_steps"

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shealth"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    .line 272
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePedoWidgetVisibility() mPedoWidgetEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_2

    .line 275
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    if-ne v1, v2, :cond_1

    .line 276
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 284
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 268
    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_1

    .line 281
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    .line 282
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "mSHealthContainer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWeatherHealthState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthVisibility()V

    .line 182
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V
    .locals 24
    .param p1, "weatherInfo"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .prologue
    .line 307
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_container:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 308
    .local v19, "weatherContainerLayout":Landroid/widget/LinearLayout;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 309
    .local v7, "iconImageView":Landroid/widget/ImageView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 310
    .local v15, "tempTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 312
    .local v17, "unitImageView":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getIconNumber()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getWeatherIconImage(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isValidCurrentTemp()Z

    move-result v20

    if-nez v20, :cond_0

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v3

    .line 318
    .local v3, "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v8

    .line 319
    .local v8, "lowTemp":F
    const-string v20, "MiniViewWeatherHealthPage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() outside [high, low] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 322
    .local v5, "highTempTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 323
    .local v10, "lowTempTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 325
    .local v12, "separatorTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 326
    .local v16, "unitHighImageView":Landroid/widget/ImageView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 328
    .local v18, "unitLowImageView":Landroid/widget/ImageView;
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "highTempStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "lowTempStr":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 334
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 340
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 408
    .end local v3    # "highTemp":F
    .end local v4    # "highTempStr":Ljava/lang/String;
    .end local v5    # "highTempTextView":Landroid/widget/TextView;
    .end local v8    # "lowTemp":F
    .end local v9    # "lowTempStr":Ljava/lang/String;
    .end local v10    # "lowTempTextView":Landroid/widget/TextView;
    .end local v12    # "separatorTextView":Landroid/widget/TextView;
    .end local v16    # "unitHighImageView":Landroid/widget/ImageView;
    .end local v18    # "unitLowImageView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 362
    .local v13, "tempInt":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "curLanguage":Ljava/lang/String;
    const-string v20, "ar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "fa"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 365
    :cond_1
    const-string v20, "MiniViewWeatherHealthPage"

    const-string v21, "Current language is Arabic"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->toDigitString(I)Ljava/lang/String;

    move-result-object v14

    .line 367
    .local v14, "tempText":Ljava/lang/String;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 373
    :goto_1
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 377
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v6

    .line 379
    .local v6, "highTempValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v11

    .line 380
    .local v11, "lowTempValue":F
    const-string v20, "MiniViewWeatherHealthPage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() inside [high, low] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 384
    .restart local v5    # "highTempTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 385
    .restart local v10    # "lowTempTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 387
    .restart local v12    # "separatorTextView":Landroid/widget/TextView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 388
    .restart local v16    # "unitHighImageView":Landroid/widget/ImageView;
    sget v20, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 391
    .restart local v18    # "unitLowImageView":Landroid/widget/ImageView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    .end local v5    # "highTempTextView":Landroid/widget/TextView;
    .end local v6    # "highTempValue":F
    .end local v10    # "lowTempTextView":Landroid/widget/TextView;
    .end local v11    # "lowTempValue":F
    .end local v12    # "separatorTextView":Landroid/widget/TextView;
    .end local v16    # "unitHighImageView":Landroid/widget/ImageView;
    .end local v18    # "unitLowImageView":Landroid/widget/ImageView;
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 370
    .end local v14    # "tempText":Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "tempText":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private updateWeatherWidgetVisibility()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 288
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isShowLockAndCover()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    .line 295
    :goto_1
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeatherWidgetVisibility() mWeatherWidgetEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    :goto_3
    return-void

    :cond_1
    move v0, v1

    .line 288
    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    .line 299
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 301
    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    .line 302
    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "mWeatherLayout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected adjustWidgetVisibility()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isSHealthInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_0
.end method

.method public getPageState()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    return v0
.end method

.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    .local v8, "result":I
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return v10

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 191
    const/4 v6, 0x0

    .line 193
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_1

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 213
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    .line 200
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 201
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    if-eqz v6, :cond_2

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 209
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 210
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    if-eqz v6, :cond_2

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 213
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v1, v10

    .line 218
    goto :goto_3
.end method

.method public needAddOrDeletePage()Z
    .locals 4

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthState()Z

    move-result v0

    .line 227
    .local v0, "currentState":Z
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needAddOrDeletePage current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "| page state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    if-eq v1, v0, :cond_0

    .line 230
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    .line 231
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registBroadcast()V
    .locals 3

    .prologue
    .line 425
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "registBroadcast()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    if-nez v1, :cond_0

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    .line 437
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 439
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    .line 440
    return-void
.end method

.method public unregistBroadcast()V
    .locals 2

    .prologue
    .line 443
    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "unregistBroadcast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 451
    return-void
.end method

.method public updateWeatherHealthVisibility()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updatePedoWidgetVisibility()V

    .line 262
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    .line 263
    return-void
.end method
