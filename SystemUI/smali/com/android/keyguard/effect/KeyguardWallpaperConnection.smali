.class public Lcom/android/keyguard/effect/KeyguardWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "KeyguardWallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final BIND_SERVICE_RETRY_DELAY:I

.field private final TAG:Ljava/lang/String;

.field private mBindServiceRetryHandler:Landroid/os/Handler;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsConnecting:Z

.field mIsVisible:Z

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mUnbindService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 39
    const-string v0, "KeyguardWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsVisible:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mUnbindService:Z

    .line 53
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->BIND_SERVICE_RETRY_DELAY:I

    .line 54
    new-instance v0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardWallpaperConnection$1;-><init>(Lcom/android/keyguard/effect/KeyguardWallpaperConnection;)V

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 70
    iput v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mDisplayId:I

    .line 72
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 167
    :try_start_0
    const-string v1, "KeyguardWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach Engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    const-string v2, "KeyguardWallpaperConnection"

    const-string v3, "connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsConnecting:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 82
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v0, "KeyguardWallpaperConnection"

    const-string v2, "bind service was called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mUnbindService:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 183
    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsVisible:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v9, 0x0

    .line 105
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const/4 v2, 0x0

    const/16 v3, 0x832

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    :cond_0
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "onServiceConnected completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    iput-boolean v9, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 135
    return-void

    .line 125
    :catch_0
    move-exception v8

    .line 126
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 138
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mUnbindService:Z

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V

    .line 152
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "Engine is destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_1
    iput-object v4, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 160
    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mUnbindService:Z

    .line 161
    iput-object v4, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 162
    iput-boolean v3, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mConnected:Z

    .line 163
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 186
    const-string v1, "KeyguardWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsVisible:Z

    if-ne p1, v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsVisible:Z

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardWallpaperConnection;->mIsVisible:Z

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method
