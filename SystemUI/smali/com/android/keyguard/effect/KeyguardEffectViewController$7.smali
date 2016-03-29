.class Lcom/android/keyguard/effect/KeyguardEffectViewController$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 568
    if-nez p1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "current_sec_theme_package_open_theme"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 579
    :cond_4
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "mdm_wallpaper_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 589
    :cond_7
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x2

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 614
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$1102(Lcom/android/keyguard/effect/KeyguardEffectViewController;I)I

    .line 600
    if-nez p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->unbindWallpaperFdService()V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->bindWallpaperFdService()V

    goto :goto_0
.end method
