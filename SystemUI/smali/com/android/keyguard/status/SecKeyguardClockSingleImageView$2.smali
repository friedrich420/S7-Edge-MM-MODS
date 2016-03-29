.class Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockSingleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->sendMsgUpdateClock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->access$100(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;Z)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->changeTextColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->access$200(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->sendMsgUpdateClock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->access$100(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;Z)V

    .line 124
    return-void
.end method
