.class Lcom/android/keyguard/status/SecKeyguardWeatherManager;
.super Ljava/lang/Object;
.source "SecKeyguardWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final URI_WEATHER_INFO:Landroid/net/Uri;

.field private static sInstance:Lcom/android/keyguard/status/SecKeyguardWeatherManager;


# instance fields
.field private final DAEMON_PREFIX:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_CODE:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_NAME_ENG:Ljava/lang/String;

.field private final KEY_CURRENT_LIFT_DUST:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ERROR_BUNDLE:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_SHOW_LOCK_AND_COVER:Ljava/lang/String;

.field private final KEY_SYSTEM_LOCATION:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_WIDGET_COUNT:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

.field private mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

.field private mWeatherInfoUserList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/status/SecKeyguardWeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->URI_WEATHER_INFO:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "aw_daemon_service_key_"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->DAEMON_PREFIX:Ljava/lang/String;

    .line 42
    const-string v1, "aw_daemon_service_key_current_temp"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 43
    const-string v1, "aw_daemon_service_key_loc_code"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_CURRENT_CITY_CODE:Ljava/lang/String;

    .line 44
    const-string v1, "aw_daemon_service_key_city_name"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_CURRENT_CITY_NAME:Ljava/lang/String;

    .line 45
    const-string v1, "aw_daemon_service_key_city_name_eng"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_CURRENT_CITY_NAME_ENG:Ljava/lang/String;

    .line 46
    const-string v1, "aw_daemon_service_key_high_temp"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_HIGH_TEMP:Ljava/lang/String;

    .line 47
    const-string v1, "aw_daemon_service_key_low_temp"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_LOW_TEMP:Ljava/lang/String;

    .line 48
    const-string v1, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_SHOW_LOCK_AND_COVER:Ljava/lang/String;

    .line 49
    const-string v1, "aw_daemon_service_key_life_dust"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_CURRENT_LIFT_DUST:Ljava/lang/String;

    .line 51
    const-string v1, "aw_daemon_service_key_temp_scale"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 52
    const-string v1, "aw_daemon_service_key_weather_icon_num"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_ICON_NUM:Ljava/lang/String;

    .line 53
    const-string v1, "aw_daemon_service_key_system_location"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_SYSTEM_LOCATION:Ljava/lang/String;

    .line 54
    const-string v1, "aw_daemon_service_key_widget_count"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_WIDGET_COUNT:Ljava/lang/String;

    .line 55
    const-string v1, "Error_Code"

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->KEY_ERROR_BUNDLE:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;

    .line 102
    new-instance v1, Lcom/android/keyguard/status/SecKeyguardWeatherManager$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager$1;-><init>(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v1, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;-><init>(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    .line 76
    new-instance v1, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-direct {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .line 77
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    .line 78
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 81
    .local v0, "isWeatherEnabled":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sendWeatherTriggerBroadcast(I)V

    .line 83
    const-string v1, "SecKeyguardWeatherManager"

    const-string v2, "SendBroadcast() from Keyguard Constructor to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->registerWeatherIntentReceiver()V

    .line 89
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardWeatherManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/status/SecKeyguardWeatherManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardWeatherManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sendWeatherTriggerBroadcast(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->registerWeatherIntentReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/status/SecKeyguardWeatherManager;Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .param p1, "x1"    # Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    return-object p1
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 250
    packed-switch p0, :pswitch_data_0

    .line 273
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    :goto_0
    return v0

    .line 251
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_01:I

    goto :goto_0

    .line 252
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    goto :goto_0

    .line 253
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_03:I

    goto :goto_0

    .line 254
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_04:I

    goto :goto_0

    .line 255
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 256
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    .line 257
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_07:I

    goto :goto_0

    .line 258
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_08:I

    goto :goto_0

    .line 259
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_09:I

    goto :goto_0

    .line 260
    :pswitch_9
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_10:I

    goto :goto_0

    .line 261
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_11:I

    goto :goto_0

    .line 262
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    goto :goto_0

    .line 263
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_13:I

    goto :goto_0

    .line 264
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_14:I

    goto :goto_0

    .line 265
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_15:I

    goto :goto_0

    .line 266
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_16:I

    goto :goto_0

    .line 267
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_17:I

    goto :goto_0

    .line 268
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_18:I

    goto :goto_0

    .line 269
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_19:I

    goto :goto_0

    .line 270
    :pswitch_13
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_20:I

    goto :goto_0

    .line 271
    :pswitch_14
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_21:I

    goto :goto_0

    .line 272
    :pswitch_15
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_22:I

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sInstance:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sInstance:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    .line 68
    const-string v0, "SecKeyguardWeatherManager"

    const-string v1, "*** SecKeyguardWeatherManager create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-object v0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sInstance:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    return-object v0
.end method

.method private handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 117
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getShowLockAndCover()I

    move-result v0

    .line 118
    .local v0, "previousShowLockAndCover":I
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getWidgetCount()I

    move-result v1

    .line 120
    .local v1, "previousWidgetCount":I
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setIconNumber(I)V

    .line 121
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setCurrentTemperature(F)V

    .line 122
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setTempScale(I)V

    .line 123
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_city_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setCurrentCityName(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setHighTemperature(F)V

    .line 126
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setLowTemperature(F)V

    .line 127
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setShowLockAndCover(I)V

    .line 128
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_life_dust"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setCurrentLifeDust(I)V

    .line 129
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_system_location"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setSystemLocation(I)V

    .line 130
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "aw_daemon_service_key_widget_count"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setWidgetCount(I)V

    .line 131
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    const-string v5, "Error_Code"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setTrusted(I)V

    .line 132
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getShowLockAndCover()I

    move-result v5

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getWidgetCount()I

    move-result v5

    if-eq v1, v5, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->setIsChangedShowOption(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->dump()V

    .line 136
    const-string v2, "SecKeyguardWeatherManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weather Visibility: Previous= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >> Now= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getShowLockAndCover()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v2, "SecKeyguardWeatherManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget Count: Previous= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >> Now= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getWidgetCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getIsChangedShowOption()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    invoke-interface {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;->updateWeatherViewVisibility()V

    .line 143
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getShowLockAndCover()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-interface {v2, v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;->updateWeatherInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getTrusted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    const-string v2, "SecKeyguardWeatherManager"

    const-string v3, "mWeatherInfo container is reliable and Call updateWeatherInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-interface {v2, v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;->updateWeatherInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_3
    const-string v2, "SecKeyguardWeatherManager"

    const-string v3, "mWeatherInfo is not reliable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_4
    const-string v2, "SecKeyguardWeatherManager"

    const-string v3, "mWeatherInfoUpdateCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerWeatherIntentReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private sendWeatherTriggerBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "CP"

    const-string v2, "Accuweather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 201
    return-void
.end method


# virtual methods
.method public getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    return-object v0
.end method

.method public isOwnerUser()Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setWeatherInfoUpdateCallback(Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    .prologue
    .line 210
    const-string v0, "SecKeyguardWeatherManager"

    const-string v1, "setWeatherInfoUpdateCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUpdateCallback:Lcom/android/keyguard/status/SecKeyguardWeatherManager$WeatherInfoUpdateCallback;

    .line 212
    return-void
.end method
