.class public Lcom/android/systemui/keyguard/WallpaperFdService;
.super Landroid/app/Service;
.source "WallpaperFdService.java"


# instance fields
.field private final mBinder:Lcom/android/keyguard/effect/IWallpaperFdService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/android/systemui/keyguard/WallpaperFdService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WallpaperFdService$1;-><init>(Lcom/android/systemui/keyguard/WallpaperFdService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WallpaperFdService;->mBinder:Lcom/android/keyguard/effect/IWallpaperFdService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/keyguard/WallpaperFdService;->mBinder:Lcom/android/keyguard/effect/IWallpaperFdService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    const-string v0, "WallpaperFdService"

    const-string v1, "WallpaperFdService created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
