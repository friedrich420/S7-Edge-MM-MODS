.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEMAPress:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$702(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 261
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateBlackTextOnWhiteWallpaper()V

    .line 268
    :cond_0
    return-void
.end method
