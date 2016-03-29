.class Lcom/android/keyguard/status/SecKeyguardWeatherView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardWeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardWeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherView;->mWeatherManager:Lcom/android/keyguard/status/SecKeyguardWeatherManager;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$000(Lcom/android/keyguard/status/SecKeyguardWeatherView;)Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->getWeatherInfo()Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->updateWeatherInfo(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    .line 79
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 83
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$200(Lcom/android/keyguard/status/SecKeyguardWeatherView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardWeatherView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$102(Lcom/android/keyguard/status/SecKeyguardWeatherView;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherView;->changeTextColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$300(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kids_home_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherView;->init()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$400(Lcom/android/keyguard/status/SecKeyguardWeatherView;)V

    goto :goto_0
.end method
