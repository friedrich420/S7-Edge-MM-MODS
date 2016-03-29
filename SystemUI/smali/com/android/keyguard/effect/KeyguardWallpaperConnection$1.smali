.class Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;
.super Landroid/os/Handler;
.source "KeyguardWallpaperConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardWallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardWallpaperConnection;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/effect/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->connect()Z

    .line 59
    return-void
.end method
