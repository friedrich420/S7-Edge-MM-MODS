.class public Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;
.super Ljava/lang/Object;
.source "WallpaperFdServiceWrapper.java"

# interfaces
.implements Lcom/android/keyguard/effect/IWallpaperFdService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/keyguard/effect/IWallpaperFdService;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/effect/IWallpaperFdService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/keyguard/effect/IWallpaperFdService;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "IWallpaperFdService"

    iput-object v0, p0, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;->TAG:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;->mService:Lcom/android/keyguard/effect/IWallpaperFdService;

    .line 13
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;->mService:Lcom/android/keyguard/effect/IWallpaperFdService;

    invoke-interface {v0}, Lcom/android/keyguard/effect/IWallpaperFdService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/keyguard/effect/WallpaperFdServiceWrapper;->mService:Lcom/android/keyguard/effect/IWallpaperFdService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/effect/IWallpaperFdService;->getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
