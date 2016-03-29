.class public Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewYahooLive.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewYahooLive"


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->initConnection()V

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->updateWhiteWallpaperInfo()V

    .line 50
    return-void
.end method

.method private initConnection()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 54
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    if-nez v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "just_lock_livewallpaper_package_name"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "just_lock_livewallpaper_class_name"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "className":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    new-instance v3, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    .line 70
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    invoke-virtual {v3}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->isServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    invoke-virtual {v3}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->connect()Z

    goto :goto_0
.end method

.method private updateWhiteWallpaperInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_1
    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 85
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->disconnect()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewYahooLive;->mConnection:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    .line 125
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
