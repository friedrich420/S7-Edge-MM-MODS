.class Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockDualImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockDualImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->sendMsgUpdateClock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->access$200(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;Z)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->changeTextColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->access$300(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->updateClock()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->access$100(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V

    .line 100
    return-void
.end method
