.class Lcom/android/keyguard/effect/KeyguardEffectViewController$8;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 640
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$8;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 644
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** wallpaper fd service connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$8;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    new-instance v1, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    invoke-static {p2}, Lcom/android/keyguard/effect/IWallpaperFdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/keyguard/effect/IWallpaperFdService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;-><init>(Lcom/android/keyguard/effect/IWallpaperFdService;)V

    iput-object v1, v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    .line 648
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 652
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** wallpaper fd service disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$8;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/effect/KeyguardEffectViewController;->mWallpaperFdService:Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;

    .line 654
    return-void
.end method
