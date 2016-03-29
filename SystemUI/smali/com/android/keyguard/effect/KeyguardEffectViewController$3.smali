.class Lcom/android/keyguard/effect/KeyguardEffectViewController$3;
.super Landroid/os/FileObserver;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 180
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const-string v2, ""

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 183
    :sswitch_1
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "CLOSE_WRITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method
