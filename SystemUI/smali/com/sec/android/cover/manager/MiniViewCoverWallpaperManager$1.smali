.class Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "MiniViewCoverWallpaperManager"

    const-string v1, "onReceive : Wallpaper changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCurrentWallpaperResId:I
    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->access$002(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;I)I

    .line 33
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    # setter for: Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0, p1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->access$102(Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    .line 37
    return-void
.end method
