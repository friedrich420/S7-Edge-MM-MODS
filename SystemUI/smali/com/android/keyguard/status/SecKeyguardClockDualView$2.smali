.class Lcom/android/keyguard/status/SecKeyguardClockDualView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    const-string v0, "easy_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualView;->sendMsgUpdateClock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$000(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const-string v0, "white_cover_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/status/SecKeyguardClockDualView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$102(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)Z

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$400(Lcom/android/keyguard/status/SecKeyguardClockDualView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)Z

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualView;->changeTextColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V

    goto :goto_0
.end method
