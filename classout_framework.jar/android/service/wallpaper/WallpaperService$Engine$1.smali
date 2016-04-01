.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 3

    .prologue
    .line 202
    iput-object p1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    .line 204
    const/4 v0, 0x2

    iput v0, p0, mRequestedFormat:I

    .line 205
    return-void
.end method


# virtual methods
.method public isCreating()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    # getter for: Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    # getter for: Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 250
    :cond_12
    :try_start_12
    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_22

    .line 255
    :cond_1d
    :goto_1d
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0

    .line 251
    :catch_22
    move-exception v0

    goto :goto_1d
.end method

.method public onAllowLockCanvas()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    return v0
.end method

.method public onRelayoutContainer()V
    .registers 4

    .prologue
    .line 214
    iget-object v1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public onUpdateSurface()V
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 222
    return-void
.end method

.method public setFixedSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 230
    iget-object v0, p0, this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    if-nez v0, :cond_e

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers currently only support sizing from layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 238
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers do not support keep screen on"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
