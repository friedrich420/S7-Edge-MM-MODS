.class Lcom/android/keyguard/status/SecKeyguardWeatherManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SecKeyguardWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SecKeyguardWeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$000(Lcom/android/keyguard/status/SecKeyguardWeatherManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    :cond_1
    return-void
.end method
