.class Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$102(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;I)I

    .line 641
    return-void
.end method
