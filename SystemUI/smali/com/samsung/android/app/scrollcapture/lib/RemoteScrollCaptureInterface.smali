.class public Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SC_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-object v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 209
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 210
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "isScrollCaptureAvailable : Failed to get package manager!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 220
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 214
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "com.samsung.android.app.scrollcapture"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 215
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 216
    .local v3, "ret":Z
    :goto_1
    sget-object v6, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "isScrollCaptureAvailable : "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string v5, "available"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ret":Z
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isScrollCaptureAvailable : not available. e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 220
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 215
    goto :goto_1

    .line 216
    .restart local v3    # "ret":Z
    :cond_2
    :try_start_1
    const-string v5, "not available"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 226
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 227
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 228
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .line 229
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "connect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, "connStartTime":J
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v5, :cond_1

    .line 42
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v5, "connect : Already connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 46
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v5, :cond_2

    .line 47
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "connect : Connection already requested"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .line 54
    new-instance v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;-><init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V

    iput-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.app.scrollcapture"

    const-string v6, "com.samsung.android.app.scrollcapture.core.ScrollCaptureRemoteService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v2, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 76
    .local v3, "result":Z
    if-nez v3, :cond_0

    .line 77
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "connect : bindService failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    if-eqz v5, :cond_3

    .line 79
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    .line 81
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 88
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    .line 100
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v2, "disconnect : No service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "transactionId"    # J
    .param p3, "savedScreenshotFilePathName"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "notifyGlobalScreenshotFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "notifyGlobalScreenshotFinished : No service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return v1

    .line 198
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyGlobalScreenshotFinished : e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "transactionId"    # J
    .param p3, "screenshotFilePathNameToSave"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "notifyGlobalScreenshotStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "notifyGlobalScreenshotStarted : No service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return v1

    .line 182
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyGlobalScreenshotStarted : e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
