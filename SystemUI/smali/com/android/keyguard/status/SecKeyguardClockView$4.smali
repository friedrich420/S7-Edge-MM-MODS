.class Lcom/android/keyguard/status/SecKeyguardClockView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCMASChanged()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "SecKeyguardClockView"

    const-string v1, "onCMASChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    .line 481
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    .line 429
    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "SecKeyguardClockView"

    const-string v1, "onOpenThemeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    .line 444
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    const/16 v2, 0x12ce

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1502(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1600(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 453
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/16 v4, 0x12ce

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1502(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 466
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "white_cover_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1702(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$2000(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1902(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    const-string v0, "dualclock_menu_settings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "homecity_timezone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/16 v1, 0x12ce

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    .line 438
    return-void
.end method
