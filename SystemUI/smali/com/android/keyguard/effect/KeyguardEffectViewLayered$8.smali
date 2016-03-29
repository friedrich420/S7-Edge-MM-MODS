.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$8;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1432
    if-nez p1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    const-string v0, "cmf_color_code"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$8;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateWallpaper()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2600(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    goto :goto_0
.end method
